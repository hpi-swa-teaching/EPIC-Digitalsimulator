initialization
postOpenInitialize
	"Continuation of #initialize. Must be split into two messages, because the order of the messages that are sent here would undefined influence the appearence of the window."
	self
		commandExecutor: EpicCommandExecutor new;
		addPanels;
		addSimulator;
		addConfiguration;
		addMenu;
		addMenuEntries;
		addSubmorphs;
		simulationStateChanged;
		configurationStateChanged