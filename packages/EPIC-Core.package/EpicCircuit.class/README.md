I am a circuit and can consist of subcircuits. I can be exported as an xml-document (#asXMLDocument). My outer ports are mapped to the corresponding inner ports.

Instance Variables
	fullyQualifiedName:			<String>
	initialHeight:				<Integer>
	innerInputPorts:				<OrderedCollection>
	innerOrigin:					<Point>
	innerOutputPorts:			<OrderedCollection>
	subComponents:			<OrderedCollection>

fullyQualifiedName
	- name of the exact path of the package in which the circuit is located (epic.standard.and)

initialHeight
	- height

innerInputPorts
	- reference to the InputPorts inside of the circuit

innerOrigin
	- upper left corner of where the circuit is placed

innerOutputPorts
	- reference to the OutputPorts inside of the circuit

subComponents
	- the subcomponents I contain