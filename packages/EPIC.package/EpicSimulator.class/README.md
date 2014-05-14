Ich bin ein Simulator und sorge für die korrekte (zeitliche) Ausführung der Signalverläufe zwischen den Schaltkreisen.

Instance Variables
	agent:		<EpicConcurrencyAgent>
	components:		<OrderedCollection>
	queueMutex:		<Mutex>
	simulationQueue:		<Heap>
	simulationTime:		<Number>
	wires:		<OrderedCollection>

agent
	- Ein EpicConcurrencyAgent der die parallele Ausführung des Simlators kontrolliert

components
	- Schaltkreis-Elemente, die der Simulator simuliert (und deren Signalverläufe überwacht)

queueMutex
	- Mutex für den synchronisierten Zugriff auf die simulationQueue.

simulationQueue
	- Queue aller noch ausstehenden SimulationsEvents. (ständig nach der Zeit sortiert)

simulationTime
	- aktuelle (logische) Simulationszeit die schrittweise hochzählt.

wires
	- Kabel, deren Änderungen der Simulator zeitlich korrekt simuliert