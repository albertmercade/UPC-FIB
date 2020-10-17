# importing Telegram API
import pickle
from telegram import ParseMode
from telegram.ext import CommandHandler, MessageHandler, Filters, Updater
import matplotlib
import matplotlib.pyplot as plt
import os
import networkx as nx

# Necessari per MacOS
matplotlib.use('agg')


# =================Funcions Auxiliars====================
# donat un node i la resposta del usuari retorna el node següent
def selectNextNode(currentNode, userResp='0'):
    possibleNodes = list(graph.edges(currentNode))
    for n in possibleNodes:
        if 'alt' in graph.get_edge_data(*n) and \
           graph.edges[n]['alt'] == userResp:
            return n[1]
    for n in possibleNodes:
        if 'item' not in graph.get_edge_data(*n) and \
           'alt' not in graph.get_edge_data(*n):
            return n[1]
    return 'END'


# donat un identificador de pregunta retorna un string amb la pregunta
# i les respostes llest per ser enviat a l'usuari i les respostes valides a
# la pregunta
def textMissatge(currentNode, idEnquesta):
    textOut = idEnquesta + '> ' + \
        graph.nodes[currentNode]['pregunta']
    resposta = list(graph.edges(currentNode))[0][1]
    respostes = graph.nodes[resposta]['respostes']
    respValides = []
    for resp in respostes:
        textOut += '\n' + resp + ': ' + respostes[resp]
        respValides.append(resp)
    return textOut, respValides


# donada un diccionari amb els resultats d'una enquesta genera el string del
# report per presentar al usuari
def generaReport(pregs):
    barra = '--------------------------------'
    textOut = barra
    textOut += '\n| *Pregunta* | *Valor* | *Resposta* |' + '\n' + barra
    textOutPrev = textOut
    for p in pregs:
        sortedDataResp = sorted(pregs[p].items(),
                                key=lambda item: item[1], reverse=True)
        for data in sortedDataResp:
            textOut += '\n|  ' + p + ' '*(13-len(p))
            textOut += ' | ' + data[0] + ' '*(10-len(data[0]))
            textOut += ' | ' + str(data[1]) + ' '*(14-len(str(data[1]))) + ' |'
        if sortedDataResp != []:
            textOut += '\n' + barra
    if textOutPrev == textOut:
        return '❌ L\'enquesta no ha estat resposta encara.'
    else:
        return textOut


# defineix la funció callback per la comanda /start
def start(bot, update, args, user_data):
    if args == []:
        dispatcher.add_handler(CommandHandler('help', help))
        dispatcher.add_handler(CommandHandler('author', author))
        dispatcher.add_handler(CommandHandler(
            'quiz', quiz, pass_args=True, pass_user_data=True))
        dispatcher.add_handler(MessageHandler(
            Filters.text, tracta_resp, pass_user_data=True))
        dispatcher.add_handler(CommandHandler(
            'pie', pie, pass_args=True, pass_user_data=True))
        dispatcher.add_handler(CommandHandler(
            'bar', bar, pass_args=True, pass_user_data=True))
        dispatcher.add_handler(CommandHandler(
            'report', report, pass_args=True, pass_user_data=True))
        dispatcher.add_handler(MessageHandler(
            Filters.command, unknown_command))
        user = update.message.from_user
        textOut = '👋 Benvingut ' + \
            user['first_name'] + ' ' + user['last_name'] + '!'
        textOut += '\n🤖 Sóc un bot que realitza enquestes i presenta els'\
            'resultats amb gràfiques o taules a demanda del usuari.'
        textOut += '\nPer veure les comandes disponibles: /help'
        bot.send_message(chat_id=update.message.chat_id, text=textOut)
        user_data['enquestaInProgress'] = False
    else:
        textOut = '⚠️ /start no accepta cap argument.\nÚs: /start'
        bot.send_message(chat_id=update.message.chat_id, text=textOut)


# defineix la funció callback per la comanda /help
def help(bot, update):
    helpStr = "Aquest bot realitza enquestes i presenta els " \
        "resultats a demanda del usuari." \
        "\nComandes:" \
        "\n/author -> informació completa de l'autor" \
        "\n/quiz idEnquesta -> realitza l’enquesta" \
        "\n/bar idEnquesta idPregunta -> gràfica de barres de la pregunta donada" \
        "\n/pie idEnquesta idPregunta -> gràfica de formatget de la pregunta donada" \
        "\n/report [idEnquesta]-> taula resum de les respostes de totes les enquestes" \
        " o de l'enquesta idEnquesta si es proporciona"
    bot.send_message(chat_id=update.message.chat_id, text=helpStr)


# defineix la funció callback per la comanda /author
def author(bot, update):
    authorStr = "Bot creat per Albert Mercadé Plasencia" \
                " (albert.mercade.plasencia@est.fib.upc.edu)"
    bot.send_message(chat_id=update.message.chat_id, text=authorStr)


# defineix la funció callback per la comanda /quiz
def quiz(bot, update, args, user_data):
    # en cas que no existeixi l'enquesta li fem saber a l'usuari i
    # l'identificador de l'enquesta
    if args == [] or args[0] not in graph:
        textOut = '⚠️ Enquesta invàlida. Enquestes existents:'
        root = [n for n, d in graph.in_degree() if d == 0]
        for r in root:
            textOut += ' ' + r
        bot.send_message(chat_id=update.message.chat_id, text=textOut)
    # si l'enquesta existeix, procedim a les preguntes
    else:
        user_data['idEnquesta'] = args[0]
        user_data['enquestaInProgress'] = True
        currentNode = user_data['idEnquesta']
        bot.send_message(chat_id=update.message.chat_id,
                         text='Enquesta ' + user_data['idEnquesta'])
        # Seleccionar la següent pregunta
        currentNode = selectNextNode(currentNode, None)
        # Fer pregunta al usuari
        textOut, user_data['respVal'] = textMissatge(
            currentNode, user_data['idEnquesta'])
        bot.send_message(chat_id=update.message.chat_id, text=textOut)
        user_data['currentNode'] = currentNode


# defineix la funció callback per la comanda /tractaResp
def tracta_resp(bot, update, user_data):
    if user_data['enquestaInProgress']:
        # obte resposta del usuari a la darrera pregunta
        userResp = update.message.text
        # obte el node de la pregunta actual
        currentNode = user_data['currentNode']

        # si la resposta és vàlida la guarda al històric de respostes
        if userResp in user_data['respVal']:
            dictResp = pickle.load(open(dirname + '/data.p', 'rb'))
            if userResp in dictResp[user_data['idEnquesta']][currentNode]:
                dictResp[user_data['idEnquesta']][currentNode][userResp] += 1
            else:
                dictResp[user_data['idEnquesta']][currentNode][userResp] = 1
            pickle.dump(dictResp, open(dirname + '/data.p', 'wb'))
            # Seleccionar la següent pregunta
            currentNode = selectNextNode(currentNode, userResp)
        else:
            textOut = "⚠️ Reposta invàlida. Torna a provar."
            bot.send_message(chat_id=update.message.chat_id, text=textOut)

        if currentNode != 'END':
            # Fer pregunta al usuari
            textOut, user_data['respVal'] = textMissatge(
                currentNode, user_data['idEnquesta'])
            bot.send_message(chat_id=update.message.chat_id, text=textOut)
            # actualitzar node actual al user_data
            user_data['currentNode'] = currentNode
        else:
            bot.send_message(chat_id=update.message.chat_id,
                             text=user_data['idEnquesta'] + '> Gràcies pel teu temps! 🙏🏼')
            user_data['enquestaInProgress'] = False
    else:
        textOut = '⚠️ Commanda no reconeguda. Consulta /help'
        bot.send_message(chat_id=update.message.chat_id, text=textOut)


# defineix la funció callback per la comanda /pie
def pie(bot, update, args, user_data):
    # obtenim totes les dades de respostes anteriors
    resp = pickle.load(open(dirname + '/data.p', 'rb'))
    if len(args) != 2 or args[0] not in resp or args[1] not in resp[args[0]]:
        textOut = '⚠️ Commanda invàlida. Preguntes existents:'
        for p in resp:
            textOut += '\nEnquesta ' + p + ':\n   '
            for r in resp[p]:
                textOut += '  ' + r
        textOut += '\nÚs: /pie <idEnquesta> <idPregunta>'
        bot.send_message(chat_id=update.message.chat_id, text=textOut)
    else:
        dataResp = resp[args[0]][args[1]]
        if dataResp == {}:
            textOut = '❌ Aquesta pregunta no ha estat resposta mai.'
            bot.send_message(chat_id=update.message.chat_id, text=textOut)
        else:
            # ordenem les respostes de cada pregunta per les vegades escollides
            sortedDataResp = sorted(
                dataResp.items(), key=lambda item: item[1], reverse=True)
            # obtenim les labels per la gràfica
            labelsPie = [sortedDataResp[i][0]
                         for i in range(len(sortedDataResp))]
            # obtenim les dades per la gràfica
            slicesPie = [sortedDataResp[i][1]
                         for i in range(len(sortedDataResp))]

            # generem la gràfica
            explodePie = tuple(0.07 for i in labelsPie)
            chart = plt.subplot()
            chart.pie(slicesPie, labels=labelsPie, explode=explodePie,
                      autopct='%1.1f%%', shadow=True)
            # guardem la gràfica com a imatge
            plt.savefig('pie.png', dpi=200)
            plt.clf()
            # enviem la gràfica al usuari
            bot.send_photo(chat_id=update.message.chat_id,
                           photo=open('pie.png', 'rb'))
            # borrem la imatge generada per la gràfica
            os.remove('pie.png')


# defineix la funció callback per la comanda /bar
def bar(bot, update, args, user_data):
    # obtenim totes les dades de respostes anteriors
    resp = pickle.load(open(dirname + '/data.p', 'rb'))
    if len(args) != 2 or args[0] not in resp or args[1] not in resp[args[0]]:
        textOut = '⚠️ Commanda invàlida. Preguntes existents:'
        for p in resp:
            textOut += '\nEnquesta ' + p + ':\n   '
            for r in resp[p]:
                textOut += '  ' + r
        textOut += '\nÚs: /bar <idEnquesta> <idPregunta>'
        bot.send_message(chat_id=update.message.chat_id, text=textOut)
    else:
        dataResp = resp[args[0]][args[1]]
        if dataResp == {}:
            textOut = '❌ Aquesta pregunta no ha estat resposta mai.'
            bot.send_message(chat_id=update.message.chat_id, text=textOut)
        else:
            # ordenem les respostes de cada pregunta per les vegades escollides
            sortedDataResp = sorted(
                dataResp.items(), key=lambda item: item[1], reverse=True)
            # obtenim les labels per la gràfica
            labelsBar = [sortedDataResp[i][0]
                         for i in range(len(sortedDataResp))]
            # obtenim les dades per la gràfica
            bars = [sortedDataResp[i][1] for i in range(len(sortedDataResp))]

            # generem la gràfica
            pos = [i for i in range(1, len(bars)+1)]
            plt.bar(pos, bars)
            plt.xticks(pos, labelsBar)
            # guardem la gràfica com a imatge
            plt.savefig('bar.png', dpi=200)
            plt.clf()
            # enviem la gràfica al usuari
            bot.send_photo(chat_id=update.message.chat_id,
                           photo=open('bar.png', 'rb'))
            # borrem la imatge generada per la gràfica
            os.remove('bar.png')


# defineix la funció callback per la comanda /report
def report(bot, update, user_data, args):
    # obtenim totes les dades de respostes anteriors
    dataResp = pickle.load(open(dirname + '/data.p', 'rb'))
    if args == []:
        textOut = ''
        for p in dataResp.keys():
            textOut += '\n\n*Enquesta ' + p + '*'
            # construim el missatge per l'usuari amb la taula
            textOut += '\n' + generaReport(dataResp[p])
        bot.send_message(chat_id=update.message.chat_id,
                         text=textOut, parse_mode=ParseMode.MARKDOWN)
    elif len(args) == 1 and args[0] in dataResp:
        textOut = '\n\n*Enquesta ' + args[0] + '*'
        # construim el missatge per l'usuari amb la taula
        textOut += '\n' + generaReport(dataResp[args[0]])
        bot.send_message(chat_id=update.message.chat_id,
                         text=textOut, parse_mode=ParseMode.MARKDOWN)
    else:
        textOut = '⚠️ Commanda invàlida.\nÚs: /report [idEnquesta]'
        bot.send_message(chat_id=update.message.chat_id, text=textOut)


def unknown_command(bot, update):
    textOut = '⚠️ Commanda no reconeguda. Consulta /help'
    bot.send_message(chat_id=update.message.chat_id, text=textOut)


# ens guardem el directori del on està el fitxer per poder accedir al graf
# que conté l'enquesta i a les respostes històriques
dirname, filename = os.path.split(os.path.abspath(__file__))

# loading the access token from token.txt
TOKEN = open(dirname + '/token.txt').read().strip()

# call main Telegram objects
updater = Updater(token=TOKEN)
dispatcher = updater.dispatcher

# handling callbacks functions to the commands
dispatcher.add_handler(CommandHandler(
    'start', start, pass_args=True, pass_user_data=True))

# carreguem el graf amb l'enquesta
graph = pickle.load(open(dirname + '/graph.p', 'rb'))

# starting the bot
updater.start_polling()
