deletion
delete
	self includingBundles do: [ :each |
		each wires remove: self ifAbsent: [].
		(each wires size = 0) ifTrue:[
			each delete.
		].
	].
	super delete.
	self isDeleted ifFalse: [
		self 
			resetEndPortToDefault;
			unplugFromPorts;
			triggerEvent: #deleted
	]