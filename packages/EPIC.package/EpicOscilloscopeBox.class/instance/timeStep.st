as yet unclassified
timeStep
	(self paused) ifFalse: [
			self oscilloscopes do: [:oscilloscope | oscilloscope timeStep ]]
	
	
