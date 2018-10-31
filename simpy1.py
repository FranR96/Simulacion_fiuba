import simpy
from random import randint


def atencion(env):
    
    clientes = 1
    while clientes <= 50:
        print('Cliente %d' %clientes)
        print('Cliente llega a %d' %env.now)
        
        yield env.timeout(randint(2,6))
        print('Cliente se va a %d' %env.now)

        clientes= clientes +1
        

env = simpy.Environment()
env.process(atencion(env))
env.run()
