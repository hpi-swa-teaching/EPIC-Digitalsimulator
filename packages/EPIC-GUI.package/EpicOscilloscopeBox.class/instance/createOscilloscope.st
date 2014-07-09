initialization
createOscilloscope
	| newOscilloscope |
	newOscilloscope := EpicOscilloscope new.
	newOscilloscope oscilloscopeBox: self.
	self oscilloscopes add: newOscilloscope.
	self addMorph: newOscilloscope  fullFrame: self oscilloscopeFrame.
	self resize
