import simpy
import numpy

class Granja(object):

    def __init__(self, env, cant_servidores):
        self.env = env
        self.cant_servidores = cant_servidores
        self.servidores = [simpy.Resource(env) for x in range(cant_servidores)]

    def atender(self, solicitud):
    	servidor = self.seleccionar_servidor()
    	#servidor = self.seleccionar_servidor_round_robin(solicitud)
    	with servidor.request() as req:
    		yield req
    		yield self.env.timeout(solicitud.obtener_tiempo_procesamiento())



    def seleccionar_servidor(self):

    	colas = []
    	for x in self.servidores:
    		if (x.count == 0) and (len(x.queue) == 0):
    			return x
    		else:
    			colas.append(len(x.queue))
    	print("   - Solicitud atendida en servidor %s" %self.servidores[numpy.array(colas).argmin()])
    	return self.servidores[numpy.array(colas).argmin()]


    def seleccionar_servidor_round_robin(self, solicitud):
        serv = solicitud.obtener_numero_de_solicitud() % self.cant_servidores
        print("   - Solicitud atendida en servidor %s" %self.servidores[serv])
        return self.servidores[serv]