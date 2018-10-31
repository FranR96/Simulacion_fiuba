import simpy
import random

time_sim = 10*60
tiempoEstacionar=3

def estacionar(env,numAuto):
        yield env.timeout(tiempoEstacionar)
        print('Auto %d estaciona en %d' %(numAuto,env.now))

def auto(env):
    
    autos = 1
    while True:
        yield env.timeout(random.expovariate(0.5))
        print('Auto %d llega en %d' %(autos,env.now))
        env.process(estacionar(env,autos))
        
        autos=autos+1

env = simpy.Environment()
env.process(auto(env))
env.run(until = time_sim)
