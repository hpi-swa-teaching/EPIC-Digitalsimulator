initialization
addSimulator
	"Das EditorPanel muss bereits erzeugt worden sein, bevor diese Nachricht geschickt
	wird."
	self simulator: EpicSimulator new.
	self simulator when: #stateChanged send: #simulationStateChanged to: self.
	self connectSimulator