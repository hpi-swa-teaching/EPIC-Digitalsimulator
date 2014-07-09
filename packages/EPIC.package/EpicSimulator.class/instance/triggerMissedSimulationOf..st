simulation
triggerMissedSimulationOf: anEvent
	| actualTime |
	"Go back in time and fix the problem, then come back"
	(anEvent timeStamp < self simulationTime) ifTrue: [ 
		actualTime := self simulationTime.
		self simulationTime: anEvent timeStamp.
		anEvent triggerSimulation.
		self simulationTime: actualTime ]
	ifFalse: [
		anEvent triggerSimulation ].