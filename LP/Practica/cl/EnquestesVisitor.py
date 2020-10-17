# Generated from Enquestes.g4 by ANTLR 4.7.1
from antlr4 import *
import networkx as nx
if __name__ is not None and "." in __name__:
    from .EnquestesParser import EnquestesParser
else:
    from EnquestesParser import EnquestesParser


def propagaEnquestaAlternatives(graph, node, enquesta):
    edges = list(graph.edges(node))
    for e in edges:
        if 'alt' in graph.get_edge_data(*e):
            nx.set_node_attributes(graph, {e[1]: {'enquesta': enquesta}})
            propagaEnquestaAlternatives(graph, e[1], enquesta)


# This class defines a complete generic visitor for a parse tree produced by EnquestesParser.
class EnquestesVisitor(ParseTreeVisitor):
    def __init__(self):
        self.graph = nx.DiGraph()
        self.items = {}

    # Visit a parse tree produced by EnquestesParser#root.
    def visitRoot(self, ctx: EnquestesParser.RootContext):
        l = ctx.getChildren()
        g = [next(l) for i in range(ctx.getChildCount())]
        self.graph.add_node("END")
        for i in g:
            self.visit(i)
        return self.graph

    # Visit a parse tree produced by EnquestesParser#enquesta.
    def visitEnquesta(self, ctx: EnquestesParser.EnquestaContext):
        l = ctx.getChildren()
        f = [next(l) for i in range(ctx.getChildCount())]
        enquesta = f[0].getText()
        self.graph.add_node(enquesta)
        self.graph.add_edge(f[0].getText(), self.items[f[3].getText()])
        for i in range(3, ctx.getChildCount()-1):
            nx.set_node_attributes(
                self.graph, {self.items[f[i].getText()]: {'enquesta': enquesta}})
            propagaEnquestaAlternatives(
                self.graph, self.items[f[i].getText()], enquesta)
            self.graph.add_edge(self.items[f[i].getText()],
                                self.items[f[i+1].getText()])
        nx.set_node_attributes(self.graph, {
                               self.items[f[ctx.getChildCount()-1].getText()]: {'enquesta': enquesta}})
        propagaEnquestaAlternatives(
            self.graph, self.items[f[ctx.getChildCount()-1].getText()], enquesta)
        self.graph.add_edge(
            self.items[f[ctx.getChildCount()-1].getText()], "END")

    # Visit a parse tree produced by EnquestesParser#pregunta.
    def visitPregunta(self, ctx: EnquestesParser.PreguntaContext):
        l = ctx.getChildren()
        f = [next(l) for i in range(ctx.getChildCount())]
        pregunta = ' '.join([f[i].getText()
                             for i in range(3, ctx.getChildCount()-1)]) + '?'
        self.graph.add_node(
            f[0].getText(), pregunta=pregunta)

    # Visit a parse tree produced by EnquestesParser#resposta.
    def visitResposta(self, ctx: EnquestesParser.RespostaContext):
        l = ctx.getChildren()
        f = [next(l) for i in range(ctx.getChildCount())]
        respostes = {}
        for i in f[3:]:
            k, v = self.visit(i)
            respostes[k] = v
        self.graph.add_node(f[0].getText(), respostes=respostes)

    # Visit a parse tree produced by EnquestesParser#respostaPossible.
    def visitRespostaPossible(self, ctx: EnquestesParser.RespostaPossibleContext):
        l = ctx.getChildren()
        f = [next(l) for i in range(ctx.getChildCount())]
        resposta = ' '.join([f[i].getText()
                             for i in range(2, ctx.getChildCount()-1)])
        return (f[0].getText(), resposta)

    # Visit a parse tree produced by EnquestesParser#item.

    def visitItem(self, ctx: EnquestesParser.ItemContext):
        l = ctx.getChildren()
        f = [next(l) for i in range(ctx.getChildCount())]
        self.items[f[0].getText()] = f[3].getText()
        self.graph.add_edge(
            f[3].getText(), f[5].getText(), item=f[0].getText())

    # Visit a parse tree produced by EnquestesParser#assoc.
    def visitAssoc(self, ctx: EnquestesParser.AssocContext):
        l = ctx.getChildren()
        f = [next(l) for i in range(ctx.getChildCount())]
        return (f[1].getText(), f[3].getText())

    # Visit a parse tree produced by EnquestesParser#alternativa.
    def visitAlternativa(self, ctx: EnquestesParser.AlternativaContext):
        l = ctx.getChildren()
        f = [next(l) for i in range(ctx.getChildCount())]
        for i in range(5, ctx.getChildCount()-1):
            tupleAux = self.visit(f[i])
            self.graph.add_edge(self.items[f[3].getText()],
                                self.items[tupleAux[1]], alt=tupleAux[0])


del EnquestesParser
