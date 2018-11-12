import numpy
import random

class Solicitud(object):

    numpy.random.seed(0)


    tiempo_procesamiento = {
        '1': random.randint(60,180),
        '2': random.randint(120,360),
        '3': random.randint(200,800)
    }

    def __init__(self, env, numero):
        self.env = env
        self.numero = numero
        random.seed(numero) #Cambio el seed para cada nueva solicitud asi cambian los tiempos de procesamiento.
        self.type = numpy.random.choice(['1','2','3'],p=[0.7,0.2,0.1])




    def ser_atendida(self, granja):
        yield self.env.process(granja.atender(self))
        print("%.2f: Solicitud tipo %s atendida" % (self.env.now, self.type))

    def obtener_tiempo_procesamiento(self):
        return self.tiempo_procesamiento[self.type]

    def obtener_numero_de_solicitud(self):
        return self.numero