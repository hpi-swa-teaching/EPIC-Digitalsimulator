connecting
connectTo: aPort
	^ EpicWire from: self startPort to: aPort with: self anchorPoints allButLast