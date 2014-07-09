component modification
split: aWire at: aJunction on: aPosition
	| wire sinkPort splitAnchorPoints |
	
	splitAnchorPoints := aWire splitAt: aPosition.
	
	wire := EpicWire new.
	sinkPort := aWire endPort.
	aWire unplugFromEndPort.
	
	wire setEndPort: sinkPort;
		  setStartPort: aJunction outputPorts first;
		  propagateValue;
		  anchorPoints: splitAnchorPoints second.
	
	aWire setEndPort: (aJunction inputPorts first);
		setSelected: false;
		propagateValue;
	      anchorPoints: splitAnchorPoints first.