import sys
import os
from antlr4 import *
from EnquestesLexer import EnquestesLexer
from EnquestesParser import EnquestesParser
from antlr4.InputStream import InputStream
from EnquestesVisitor import EnquestesVisitor
import networkx as nx
import matplotlib.pyplot as plt
import pickle


# dibuixa el graf i genera un PNG, també guarda el graf amb pickle a un
# fitxer extern
def draw_graph_and_pickle(graph, dirname):
    # afegeix etiquetes i colors als nodes i arestes del graph
    pos = nx.circular_layout(graph)
    nx.draw_networkx_nodes(graph, pos, nodelist=list(
        graph.nodes), node_size=700, node_color='#7ea7d6')
    nx.draw_networkx_edges(graph, pos, edge_color='black')
    nx.draw_networkx_labels(graph, pos, font_size=11)
    labels_items = nx.get_edge_attributes(graph, 'item')
    nx.draw_networkx_edge_labels(
        graph, pos, edge_labels=labels_items, font_color='blue')
    nx.draw_networkx_edges(graph, pos, list(
        labels_items.keys()), edge_color='b')
    labels_alts = nx.get_edge_attributes(graph, 'alt')
    nx.draw_networkx_edge_labels(
        graph, pos, edge_labels=labels_alts, font_color='green')
    nx.draw_networkx_edges(graph, pos, list(
        labels_alts.keys()), edge_color='g')
    # guarda imatge del graph al directori actual
    plt.savefig(dirname + '/graph.png', dpi=200)

    # guarda graph en un pickle al directory bot/
    botDir = dirname[:len(dirname)-2] + 'bot/'
    pickle.dump(graph, open(botDir + 'graph.p', 'wb'))


# a partir del graf crea l'ED per guardar respostes i la guarda amb pickle
# a un fitxer extern
def crearEDRespostes(graph, dirname):
    dict = {}
    roots = [n for n, d in graph.in_degree() if d == 0]
    for r in roots:
        dict[r] = {}
        nodes = nx.get_node_attributes(graph, 'enquesta')
        nodesEnquesta = [k for k in nodes.keys() if nodes[k] == r]
        for p in nodesEnquesta:
            dict[r][p] = {}
    botDir = dirname[:len(dirname)-2] + 'bot/'
    pickle.dump(dict, open(botDir + 'data.p', 'wb'))


input_stream = FileStream(sys.argv[1], encoding='utf-8')

lexer = EnquestesLexer(input_stream)
token_stream = CommonTokenStream(lexer)
parser = EnquestesParser(token_stream)
ast = parser.root()

# path a test.graph.py
dirname, filename = os.path.split(os.path.abspath(__file__))

visitor = EnquestesVisitor()
# visitor que retorna un graf creat a partir de l'AST
graph = visitor.visit(ast)

draw_graph_and_pickle(graph, dirname)
crearEDRespostes(graph, dirname)
