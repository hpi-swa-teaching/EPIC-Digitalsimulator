deletion
unplugFromEndPort
	self
		unplugFromPort: self endPort;
		endPort: nil