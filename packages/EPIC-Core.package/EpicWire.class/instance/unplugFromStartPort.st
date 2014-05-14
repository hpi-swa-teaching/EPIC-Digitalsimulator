deletion
unplugFromStartPort
	self
		unplugFromPort: self startPort;
		startPort: nil