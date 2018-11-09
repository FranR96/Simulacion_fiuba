import simpy
from numpy import argmax
from random import randint
max_clientes = 1000

queue1 = []
queue2 = []

def atender(cajero,env):
	with cajero.request() as req:
		yield req
		yield env.timeout(randint(6,14))


def seleccionarCajero(cajero1,cajero2):
	if(cajero1.count==0) and (len(cajero1.queue)==0):
		queue1.append(len(cajero1.queue)+1)
		return cajero1
	elif(cajero2.count==0) and (len(cajero2.queue)==0):
		queue2.append(len(cajero2.queue)+1)
		return cajero2
	else:
		if(len(cajero1.queue)>=len(cajero2.queue)):
			queue2.append(len(cajero2.queue)+1)
			return cajero2
		else:
			queue1.append(len(cajero1.queue)+1)
			return cajero1



def arrive(env):
	cliente=1
	cajero1 = simpy.Resource(env)
	cajero2 = simpy.Resource(env)
	while cliente<=max_clientes:
		yield env.timeout(randint(4,6))
		cajeroSeleccionado=seleccionarCajero(cajero1,cajero2)
		env.process(atender(cajeroSeleccionado,env))
		cliente +=1

env= simpy.Environment()
env.process(arrive(env))
env.run()
print('El max de cola 1 fue: %d' %max(queue1))
print('El max de cola 2 fue: %d'%max(queue2))