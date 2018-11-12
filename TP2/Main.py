import simpy
import random

from Granja import Granja
from Solicitud import Solicitud

CANT_SOLICITUDES = 500
CANT_SERVIDORES = 5
MEDIA_EXP = 45

def generar_clientes(env, cant_solicitudes, mediaexp, granja):

    random.seed(0)

    for i in range(cant_solicitudes):
        numero = i 
        solicitud = Solicitud(env, numero)
        env.process(solicitud.ser_atendida(granja))
        t = random.expovariate(1/mediaexp)
        yield env.timeout(t)

env = simpy.Environment()
granja = Granja(env, CANT_SERVIDORES)
env.process(generar_clientes(env, CANT_SOLICITUDES, MEDIA_EXP, granja))
env.run()
