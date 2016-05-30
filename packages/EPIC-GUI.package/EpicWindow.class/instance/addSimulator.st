initialization
addSimulator
	"The EditorPanel must have been created before this message is sent."
	self simulator: EpicSimulator new.
	self simulator when: #stateChanged send: #simulationStateChanged to: self.
	self connectSimulator