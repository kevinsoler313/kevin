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
        func_name = ctx.FUNC().getText()  # Obtener el nombre de la función
        value = self.visit(ctx.expr())  # Evaluar la expresión

        if func_name == "Sin":
            return round(math.sin(math.radians(value)), 2)
        elif func_name == "Cos":
            return round(math.cos(math.radians(value)), 2)
        elif func_name == "Tan":
            return round(math.tan(math.radians(value)), 2)
    # '(' expr ')'
    def visitParens(self, ctx):
        return self.visit(ctx.expr())  # Evaluar dentro de los paréntesis

