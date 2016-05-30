I am a wire and connect two ports between components. On creation it is ensured that wires can only be drawn between InputPorts and OutputPorts. 

Instance Variables
	endPort:				<EpicPort>
	grabbedPointIndex:		<Integer>
	lineWidth:				<Integer>
	selected:				<Boolean>

endPort
	- reference to the Endport to which the wire leads

grabbedAnchorIndex
	- if the wire is being edited, the index of the selected anchor point is stored here

lineWidth
	- line width of the wire

selected
	- this parameter returns true, if the wire is selected
