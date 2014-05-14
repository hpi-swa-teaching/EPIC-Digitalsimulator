initialization
addConfiguration
	EpicConfiguration registerInstance: self.
	(EpicConfiguration instanceFor: self)
		when: #stateChanged
		send: #configurationStateChanged
		to: self
