wiring
removeWireStub
	 self wireStub ifNotNilDo: [ :stub | stub delete ]. 
	 self 
		wireStub: nil;
		unregisterForMouseMove