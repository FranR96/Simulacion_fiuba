import simpy
import random

time_sim = 10*60
tiempoEstacionar=8
tiempoBarrera = 4

def estacionar(env,numAuto,barrera):
        with barrera.request() as req:
            yield req
            yield env.timeout(tiempoBarrera)
        print('Tiempo %d: Auto %d paso la barrera ' %(env.now,numAuto))
        yield env.timeout(tiempoEstacionar)
        print('Tiempo %d: Auto %d estaciona ' %(env.now,numAuto))

def auto(env):
    barrera = simpy.Resource(env)
    autos = 1
    while True:
        yield env.timeout(random.expovariate(0.5))
        print('Tiempo %d: Auto %d llega' %(env.now,autos))
        env.process(estacionar(env,autos,barrera))
        
        autos=autos+1

env = simpy.Environment()
env.process(auto(env))
env.run(until = time_sim)
