I am the abstract base class of all components. During my creation I create my ports using #createInput/Outputports. My switching fuction is realised by #simulateWith: inputValues, by processing the values at my input ports and forwarding them to the output ports.

Instance Variables
	inputPorts:			<OrderedCollection>
	outputPorts:		<OrderedCollection>
	selected:			<Boolean>

inputPorts
	-  collection of all input ports

outputPorts
	- collection of all output ports

selected
	- returns if the component is currently highlighted
