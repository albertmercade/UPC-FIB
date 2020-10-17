# Generated from cl/Enquestes.g4 by ANTLR 4.7.1
# encoding: utf-8
from antlr4 import *
from io import StringIO
from typing.io import TextIO
import sys


def serializedATN():
    with StringIO() as buf:
        buf.write("\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\26")
        buf.write("^\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b")
        buf.write("\t\b\4\t\t\t\3\2\3\2\3\2\3\2\3\2\3\2\7\2\31\n\2\f\2\16")
        buf.write("\2\34\13\2\3\2\3\2\3\3\3\3\3\3\3\3\6\3$\n\3\r\3\16\3%")
        buf.write("\3\4\3\4\3\4\3\4\6\4,\n\4\r\4\16\4-\3\4\3\4\3\5\3\5\3")
        buf.write("\5\3\5\6\5\66\n\5\r\5\16\5\67\3\6\3\6\3\6\6\6=\n\6\r\6")
        buf.write("\16\6>\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\b\3\b\3\b")
        buf.write("\3\b\3\b\3\b\5\bP\n\b\3\t\3\t\3\t\3\t\3\t\3\t\6\tX\n\t")
        buf.write("\r\t\16\tY\3\t\3\t\3\t\2\2\n\2\4\6\b\n\f\16\20\2\3\4\2")
        buf.write("\21\22\24\24\2a\2\32\3\2\2\2\4\37\3\2\2\2\6\'\3\2\2\2")
        buf.write("\b\61\3\2\2\2\n9\3\2\2\2\fB\3\2\2\2\16I\3\2\2\2\20Q\3")
        buf.write("\2\2\2\22\31\5\4\3\2\23\31\5\6\4\2\24\31\5\b\5\2\25\31")
        buf.write("\5\f\7\2\26\31\5\16\b\2\27\31\5\20\t\2\30\22\3\2\2\2\30")
        buf.write("\23\3\2\2\2\30\24\3\2\2\2\30\25\3\2\2\2\30\26\3\2\2\2")
        buf.write("\30\27\3\2\2\2\31\34\3\2\2\2\32\30\3\2\2\2\32\33\3\2\2")
        buf.write("\2\33\35\3\2\2\2\34\32\3\2\2\2\35\36\7\3\2\2\36\3\3\2")
        buf.write("\2\2\37 \7\21\2\2 !\7\4\2\2!#\7\5\2\2\"$\7\23\2\2#\"\3")
        buf.write("\2\2\2$%\3\2\2\2%#\3\2\2\2%&\3\2\2\2&\5\3\2\2\2\'(\7\23")
        buf.write("\2\2()\7\4\2\2)+\7\6\2\2*,\t\2\2\2+*\3\2\2\2,-\3\2\2\2")
        buf.write("-+\3\2\2\2-.\3\2\2\2./\3\2\2\2/\60\7\25\2\2\60\7\3\2\2")
        buf.write("\2\61\62\7\23\2\2\62\63\7\4\2\2\63\65\7\7\2\2\64\66\5")
        buf.write("\n\6\2\65\64\3\2\2\2\66\67\3\2\2\2\67\65\3\2\2\2\678\3")
        buf.write("\2\2\28\t\3\2\2\29:\7\24\2\2:<\7\4\2\2;=\t\2\2\2<;\3\2")
        buf.write("\2\2=>\3\2\2\2><\3\2\2\2>?\3\2\2\2?@\3\2\2\2@A\7\b\2\2")
        buf.write("A\13\3\2\2\2BC\7\23\2\2CD\7\4\2\2DE\7\t\2\2EF\7\23\2\2")
        buf.write("FG\7\n\2\2GH\7\23\2\2H\r\3\2\2\2IJ\7\13\2\2JK\7\24\2\2")
        buf.write("KL\7\f\2\2LM\7\23\2\2MO\7\r\2\2NP\7\f\2\2ON\3\2\2\2OP")
        buf.write("\3\2\2\2P\17\3\2\2\2QR\7\23\2\2RS\7\4\2\2ST\7\16\2\2T")
        buf.write("U\7\23\2\2UW\7\17\2\2VX\5\16\b\2WV\3\2\2\2XY\3\2\2\2Y")
        buf.write("W\3\2\2\2YZ\3\2\2\2Z[\3\2\2\2[\\\7\20\2\2\\\21\3\2\2\2")
        buf.write("\n\30\32%-\67>OY")
        return buf.getvalue()


class EnquestesParser (Parser):

    grammarFileName = "Enquestes.g4"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [DFA(ds, i) for i, ds in enumerate(atn.decisionToState)]

    sharedContextCache = PredictionContextCache()

    literalNames = ["<INVALID>", "'END'", "':'", "'ENQUESTA'", "'PREGUNTA'",
                    "'RESPOSTA'", "';'", "'ITEM'", "'->'", "'('", "','",
                    "')'", "'ALTERNATIVA'", "'['", "']'", "<INVALID>",
                    "<INVALID>", "<INVALID>", "<INVALID>", "'?'"]

    symbolicNames = ["<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>",
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>",
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>",
                     "<INVALID>", "<INVALID>", "<INVALID>", "PARAULA",
                     "PUNTUACIO", "ID", "NUM", "INTERROGANT", "WS"]

    RULE_root = 0
    RULE_enquesta = 1
    RULE_pregunta = 2
    RULE_resposta = 3
    RULE_respostaPossible = 4
    RULE_item = 5
    RULE_assoc = 6
    RULE_alternativa = 7

    ruleNames = ["root", "enquesta", "pregunta", "resposta", "respostaPossible",
                 "item", "assoc", "alternativa"]

    EOF = Token.EOF
    T__0 = 1
    T__1 = 2
    T__2 = 3
    T__3 = 4
    T__4 = 5
    T__5 = 6
    T__6 = 7
    T__7 = 8
    T__8 = 9
    T__9 = 10
    T__10 = 11
    T__11 = 12
    T__12 = 13
    T__13 = 14
    PARAULA = 15
    PUNTUACIO = 16
    ID = 17
    NUM = 18
    INTERROGANT = 19
    WS = 20

    def __init__(self, input: TokenStream, output: TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.7.1")
        self._interp = ParserATNSimulator(
            self, self.atn, self.decisionsToDFA, self.sharedContextCache)
        self._predicates = None

    class RootContext(ParserRuleContext):

        def __init__(self, parser, parent: ParserRuleContext = None, invokingState: int = -1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def enquesta(self, i: int = None):
            if i is None:
                return self.getTypedRuleContexts(EnquestesParser.EnquestaContext)
            else:
                return self.getTypedRuleContext(EnquestesParser.EnquestaContext, i)

        def pregunta(self, i: int = None):
            if i is None:
                return self.getTypedRuleContexts(EnquestesParser.PreguntaContext)
            else:
                return self.getTypedRuleContext(EnquestesParser.PreguntaContext, i)

        def resposta(self, i: int = None):
            if i is None:
                return self.getTypedRuleContexts(EnquestesParser.RespostaContext)
            else:
                return self.getTypedRuleContext(EnquestesParser.RespostaContext, i)

        def item(self, i: int = None):
            if i is None:
                return self.getTypedRuleContexts(EnquestesParser.ItemContext)
            else:
                return self.getTypedRuleContext(EnquestesParser.ItemContext, i)

        def assoc(self, i: int = None):
            if i is None:
                return self.getTypedRuleContexts(EnquestesParser.AssocContext)
            else:
                return self.getTypedRuleContext(EnquestesParser.AssocContext, i)

        def alternativa(self, i: int = None):
            if i is None:
                return self.getTypedRuleContexts(EnquestesParser.AlternativaContext)
            else:
                return self.getTypedRuleContext(EnquestesParser.AlternativaContext, i)

        def getRuleIndex(self):
            return EnquestesParser.RULE_root

        def accept(self, visitor: ParseTreeVisitor):
            if hasattr(visitor, "visitRoot"):
                return visitor.visitRoot(self)
            else:
                return visitor.visitChildren(self)

    def root(self):

        localctx = EnquestesParser.RootContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_root)
        self._la = 0  # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 24
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while (((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << EnquestesParser.T__8) | (1 << EnquestesParser.PARAULA) | (1 << EnquestesParser.ID))) != 0):
                self.state = 22
                self._errHandler.sync(self)
                la_ = self._interp.adaptivePredict(self._input, 0, self._ctx)
                if la_ == 1:
                    self.state = 16
                    self.enquesta()
                    pass

                elif la_ == 2:
                    self.state = 17
                    self.pregunta()
                    pass

                elif la_ == 3:
                    self.state = 18
                    self.resposta()
                    pass

                elif la_ == 4:
                    self.state = 19
                    self.item()
                    pass

                elif la_ == 5:
                    self.state = 20
                    self.assoc()
                    pass

                elif la_ == 6:
                    self.state = 21
                    self.alternativa()
                    pass

                self.state = 26
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 27
            self.match(EnquestesParser.T__0)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class EnquestaContext(ParserRuleContext):

        def __init__(self, parser, parent: ParserRuleContext = None, invokingState: int = -1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def PARAULA(self):
            return self.getToken(EnquestesParser.PARAULA, 0)

        def ID(self, i: int = None):
            if i is None:
                return self.getTokens(EnquestesParser.ID)
            else:
                return self.getToken(EnquestesParser.ID, i)

        def getRuleIndex(self):
            return EnquestesParser.RULE_enquesta

        def accept(self, visitor: ParseTreeVisitor):
            if hasattr(visitor, "visitEnquesta"):
                return visitor.visitEnquesta(self)
            else:
                return visitor.visitChildren(self)

    def enquesta(self):

        localctx = EnquestesParser.EnquestaContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_enquesta)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 29
            self.match(EnquestesParser.PARAULA)
            self.state = 30
            self.match(EnquestesParser.T__1)
            self.state = 31
            self.match(EnquestesParser.T__2)
            self.state = 33
            self._errHandler.sync(self)
            _alt = 1
            while _alt != 2 and _alt != ATN.INVALID_ALT_NUMBER:
                if _alt == 1:
                    self.state = 32
                    self.match(EnquestesParser.ID)

                else:
                    raise NoViableAltException(self)
                self.state = 35
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input, 2, self._ctx)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class PreguntaContext(ParserRuleContext):

        def __init__(self, parser, parent: ParserRuleContext = None, invokingState: int = -1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def ID(self):
            return self.getToken(EnquestesParser.ID, 0)

        def INTERROGANT(self):
            return self.getToken(EnquestesParser.INTERROGANT, 0)

        def PARAULA(self, i: int = None):
            if i is None:
                return self.getTokens(EnquestesParser.PARAULA)
            else:
                return self.getToken(EnquestesParser.PARAULA, i)

        def NUM(self, i: int = None):
            if i is None:
                return self.getTokens(EnquestesParser.NUM)
            else:
                return self.getToken(EnquestesParser.NUM, i)

        def PUNTUACIO(self, i: int = None):
            if i is None:
                return self.getTokens(EnquestesParser.PUNTUACIO)
            else:
                return self.getToken(EnquestesParser.PUNTUACIO, i)

        def getRuleIndex(self):
            return EnquestesParser.RULE_pregunta

        def accept(self, visitor: ParseTreeVisitor):
            if hasattr(visitor, "visitPregunta"):
                return visitor.visitPregunta(self)
            else:
                return visitor.visitChildren(self)

    def pregunta(self):

        localctx = EnquestesParser.PreguntaContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_pregunta)
        self._la = 0  # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 37
            self.match(EnquestesParser.ID)
            self.state = 38
            self.match(EnquestesParser.T__1)
            self.state = 39
            self.match(EnquestesParser.T__3)
            self.state = 41
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 40
                _la = self._input.LA(1)
                if not((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << EnquestesParser.PARAULA) | (1 << EnquestesParser.PUNTUACIO) | (1 << EnquestesParser.NUM))) != 0)):
                    self._errHandler.recoverInline(self)
                else:
                    self._errHandler.reportMatch(self)
                    self.consume()
                self.state = 43
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << EnquestesParser.PARAULA) | (1 << EnquestesParser.PUNTUACIO) | (1 << EnquestesParser.NUM))) != 0)):
                    break

            self.state = 45
            self.match(EnquestesParser.INTERROGANT)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class RespostaContext(ParserRuleContext):

        def __init__(self, parser, parent: ParserRuleContext = None, invokingState: int = -1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def ID(self):
            return self.getToken(EnquestesParser.ID, 0)

        def respostaPossible(self, i: int = None):
            if i is None:
                return self.getTypedRuleContexts(EnquestesParser.RespostaPossibleContext)
            else:
                return self.getTypedRuleContext(EnquestesParser.RespostaPossibleContext, i)

        def getRuleIndex(self):
            return EnquestesParser.RULE_resposta

        def accept(self, visitor: ParseTreeVisitor):
            if hasattr(visitor, "visitResposta"):
                return visitor.visitResposta(self)
            else:
                return visitor.visitChildren(self)

    def resposta(self):

        localctx = EnquestesParser.RespostaContext(self, self._ctx, self.state)
        self.enterRule(localctx, 6, self.RULE_resposta)
        self._la = 0  # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 47
            self.match(EnquestesParser.ID)
            self.state = 48
            self.match(EnquestesParser.T__1)
            self.state = 49
            self.match(EnquestesParser.T__4)
            self.state = 51
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 50
                self.respostaPossible()
                self.state = 53
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la == EnquestesParser.NUM):
                    break

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class RespostaPossibleContext(ParserRuleContext):

        def __init__(self, parser, parent: ParserRuleContext = None, invokingState: int = -1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def NUM(self, i: int = None):
            if i is None:
                return self.getTokens(EnquestesParser.NUM)
            else:
                return self.getToken(EnquestesParser.NUM, i)

        def PARAULA(self, i: int = None):
            if i is None:
                return self.getTokens(EnquestesParser.PARAULA)
            else:
                return self.getToken(EnquestesParser.PARAULA, i)

        def PUNTUACIO(self, i: int = None):
            if i is None:
                return self.getTokens(EnquestesParser.PUNTUACIO)
            else:
                return self.getToken(EnquestesParser.PUNTUACIO, i)

        def getRuleIndex(self):
            return EnquestesParser.RULE_respostaPossible

        def accept(self, visitor: ParseTreeVisitor):
            if hasattr(visitor, "visitRespostaPossible"):
                return visitor.visitRespostaPossible(self)
            else:
                return visitor.visitChildren(self)

    def respostaPossible(self):

        localctx = EnquestesParser.RespostaPossibleContext(
            self, self._ctx, self.state)
        self.enterRule(localctx, 8, self.RULE_respostaPossible)
        self._la = 0  # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 55
            self.match(EnquestesParser.NUM)
            self.state = 56
            self.match(EnquestesParser.T__1)
            self.state = 58
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 57
                _la = self._input.LA(1)
                if not((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << EnquestesParser.PARAULA) | (1 << EnquestesParser.PUNTUACIO) | (1 << EnquestesParser.NUM))) != 0)):
                    self._errHandler.recoverInline(self)
                else:
                    self._errHandler.reportMatch(self)
                    self.consume()
                self.state = 60
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << EnquestesParser.PARAULA) | (1 << EnquestesParser.PUNTUACIO) | (1 << EnquestesParser.NUM))) != 0)):
                    break

            self.state = 62
            self.match(EnquestesParser.T__5)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class ItemContext(ParserRuleContext):

        def __init__(self, parser, parent: ParserRuleContext = None, invokingState: int = -1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def ID(self, i: int = None):
            if i is None:
                return self.getTokens(EnquestesParser.ID)
            else:
                return self.getToken(EnquestesParser.ID, i)

        def getRuleIndex(self):
            return EnquestesParser.RULE_item

        def accept(self, visitor: ParseTreeVisitor):
            if hasattr(visitor, "visitItem"):
                return visitor.visitItem(self)
            else:
                return visitor.visitChildren(self)

    def item(self):

        localctx = EnquestesParser.ItemContext(self, self._ctx, self.state)
        self.enterRule(localctx, 10, self.RULE_item)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 64
            self.match(EnquestesParser.ID)
            self.state = 65
            self.match(EnquestesParser.T__1)
            self.state = 66
            self.match(EnquestesParser.T__6)
            self.state = 67
            self.match(EnquestesParser.ID)
            self.state = 68
            self.match(EnquestesParser.T__7)
            self.state = 69
            self.match(EnquestesParser.ID)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class AssocContext(ParserRuleContext):

        def __init__(self, parser, parent: ParserRuleContext = None, invokingState: int = -1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def NUM(self):
            return self.getToken(EnquestesParser.NUM, 0)

        def ID(self):
            return self.getToken(EnquestesParser.ID, 0)

        def getRuleIndex(self):
            return EnquestesParser.RULE_assoc

        def accept(self, visitor: ParseTreeVisitor):
            if hasattr(visitor, "visitAssoc"):
                return visitor.visitAssoc(self)
            else:
                return visitor.visitChildren(self)

    def assoc(self):

        localctx = EnquestesParser.AssocContext(self, self._ctx, self.state)
        self.enterRule(localctx, 12, self.RULE_assoc)
        self._la = 0  # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 71
            self.match(EnquestesParser.T__8)
            self.state = 72
            self.match(EnquestesParser.NUM)
            self.state = 73
            self.match(EnquestesParser.T__9)
            self.state = 74
            self.match(EnquestesParser.ID)
            self.state = 75
            self.match(EnquestesParser.T__10)
            self.state = 77
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if _la == EnquestesParser.T__9:
                self.state = 76
                self.match(EnquestesParser.T__9)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class AlternativaContext(ParserRuleContext):

        def __init__(self, parser, parent: ParserRuleContext = None, invokingState: int = -1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def ID(self, i: int = None):
            if i is None:
                return self.getTokens(EnquestesParser.ID)
            else:
                return self.getToken(EnquestesParser.ID, i)

        def assoc(self, i: int = None):
            if i is None:
                return self.getTypedRuleContexts(EnquestesParser.AssocContext)
            else:
                return self.getTypedRuleContext(EnquestesParser.AssocContext, i)

        def getRuleIndex(self):
            return EnquestesParser.RULE_alternativa

        def accept(self, visitor: ParseTreeVisitor):
            if hasattr(visitor, "visitAlternativa"):
                return visitor.visitAlternativa(self)
            else:
                return visitor.visitChildren(self)

    def alternativa(self):

        localctx = EnquestesParser.AlternativaContext(
            self, self._ctx, self.state)
        self.enterRule(localctx, 14, self.RULE_alternativa)
        self._la = 0  # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 79
            self.match(EnquestesParser.ID)
            self.state = 80
            self.match(EnquestesParser.T__1)
            self.state = 81
            self.match(EnquestesParser.T__11)
            self.state = 82
            self.match(EnquestesParser.ID)
            self.state = 83
            self.match(EnquestesParser.T__12)
            self.state = 85
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 84
                self.assoc()
                self.state = 87
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la == EnquestesParser.T__8):
                    break

            self.state = 89
            self.match(EnquestesParser.T__13)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx
