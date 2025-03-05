import math
from LabeledExprParser import LabeledExprParser
from LabeledExprVisitor import LabeledExprVisitor

class EvalVisitor(LabeledExprVisitor):
    def __init__(self):
        super().__init__()
        self.memory = {}  # Diccionario para almacenar variables

    # ID '=' expr NEWLINE
    def visitAssign(self, ctx):
        id_name = ctx.ID().getText()  # Nombre de la variable
        value = self.visit(ctx.expr())  # Valor de la expresión
        self.memory[id_name] = value  # Guardar en memoria
        return value

    # expr NEWLINE
    def visitPrintExpr(self, ctx):
        value = self.visit(ctx.expr())  # Evaluar la expresión
        print(value)  # Imprimir el resultado
        return 0  # Retornar valor dummy

    # INT
    def visitInt(self, ctx):
        return int(ctx.INT().getText())  # Convertir a entero

    # ID
    def visitId(self, ctx):
        id_name = ctx.ID().getText()
        return self.memory.get(id_name, 0)  # Retornar el valor o 0 si no existe

    def visitFuncCall(self, ctx):
        func_name = ctx.FUNC().getText()
        value = self.visit(ctx.expr())

        if func_name == "sin":
            return math.sin(math.radians(value))
        elif func_name == "cos":
            return math.cos(math.radians(value))
        elif func_name == "tan":
            return math.tan(math.radians(value))
        elif func_name == "log":
            return math.log(value)
    # '(' expr ')'
    def visitParens(self, ctx):
        return self.visit(ctx.expr())  # Evaluar dentro de los paréntesis

