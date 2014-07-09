as yet unclassified
resize	
	((self height > (EpicOscilloscope minHeight * self oscilloscopes size)) and: (self height > (EpicOscilloscope minHeight * 2))) 
		ifTrue: [	self window resizeOscilloscope: self layoutFrame topOffset + EpicOscilloscope minHeight].
	(self height < (EpicOscilloscope minHeight * self oscilloscopes size)) 
		ifTrue: [	self window resizeOscilloscope: self layoutFrame topOffset - EpicOscilloscope minHeight].
		
	self oscilloscopes do: [:oscilloscope | 
		oscilloscope layoutFrame topFraction: ((self oscilloscopes indexOf: oscilloscope)-1)/self oscilloscopes size.
		oscilloscope layoutFrame bottomFraction: ((self oscilloscopes indexOf: oscilloscope)) / self oscilloscopes size.]
		