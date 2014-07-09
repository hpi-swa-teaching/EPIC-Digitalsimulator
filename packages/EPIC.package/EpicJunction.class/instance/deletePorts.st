as yet unclassified
deletePorts
	| sourcePort |
	(self inputPorts first wires isEmpty not)
		ifTrue: [						
			sourcePort := self inputPorts first wires first startPort.
			
			self outputPorts first wires copy do:[ :wire | 
						    wire unplugFromStartPort;
						    	      setStartPort: sourcePort;	
						            updateBounds;			    
						            propagateValue.
				].						
			].
	super deletePorts.