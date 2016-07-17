wiring
removeWireStub
	 self wireStub ifNotNilDo: [ :stub | stub delete.
									   self invalidRect: self bounds ]. 
	 self 
		wireStub: nil;
		unregisterForMouseMove