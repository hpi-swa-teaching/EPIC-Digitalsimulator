initialization
postOpenInitialize
	"Fortsetzung von #initialize. Musste in zwei Nachrichten aufgeteilt werden, da die Reihenfolge der hier geschickten Nachrichten sonst undefiniert das Erscheinungsbild des Fensters beeinflusst."
	self
		addPanels;
		addSimulator;
		addConfiguration;
		addMenu;
		addMenuEntries;
		addSubmorphs;
		simulationStateChanged;
		configurationStateChanged.