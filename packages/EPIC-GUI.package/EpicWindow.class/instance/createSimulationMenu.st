menu creation
createSimulationMenu
	self simulationMenu: EpicMenu new.
	^ self simulationMenu
		add: 'Start Simulation' target: self simulator selector: #startSimulation;
		add: 'Stop Simulation' target: self simulator selector: #stopSimulation;
		yourself