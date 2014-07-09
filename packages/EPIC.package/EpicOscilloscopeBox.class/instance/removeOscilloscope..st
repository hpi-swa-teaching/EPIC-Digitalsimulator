as yet unclassified
removeOscilloscope: anOscilloscope
	self oscilloscopes removeAt: (self oscilloscopes indexOf: anOscilloscope).
	anOscilloscope delete.
	
	self resize
