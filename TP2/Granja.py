import simpy
import numpy

class Granja(object):

    def __init__(self, env, cant_servidores):
        self.env = env
        self.cant_servidores = cant_servidores
        self.servidores = [simpy.Resource(env) for x in range(cant_servidores)]
        self.colas_maximas = []
        self.tiempo = []


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

    	print("%s: Solicitud atendida en servidor %s con una cola de %s" %(self.env.now ,numpy.array(colas).argmin(), min(colas)))

    	self.colas_maximas.append(max(colas))
    	self.tiempo.append(self.env.now)
    	
    	return self.servidores[numpy.array(colas).argmin()]



    def seleccionar_servidor_round_robin(self, solicitud):
        serv = solicitud.obtener_numero_de_solicitud() % self.cant_servidores
        print("   - Solicitud atendida en servidor %s" %serv)
        return self.servidores[serv]



    def obtener_cola_maxima(self):
    	self.colas_maximas



    def obtener_tiempos(self):
    	self.tiempo