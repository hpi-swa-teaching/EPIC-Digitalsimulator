pages
userInterfaceHelp

	^ HelpTopic
		title: 'User Interface'
		contents: (EpicHelp showHTML: 
'<h1>User Interface</h1>

<p>Epic: Program for Integrated Circuits user interface consists of 2 main parts: the Prototype Panel (blue) and the Editor Panel (green), furthermore complemented by a menu bar (red) to allow access to general functionalities.</p>
'),
(EpicHelp showImage: 'ui_layout'),
(EpicHelp showHTML: '
<p>The Prototype Panel shows all the possible circuit components Epic: Program for Integrated Circuits provides. It is organized in 4 different tabs. The GATE-tab holds all components used to create the functionality of the circuit. In the SWITCHES-tab and DISPLAY-tab on can find all input / output options to interact with circuit. Epic: Program for Integrated Circuits allows the user to create its own components, those are stored inside the CUSTOM-tab of the Prototype Panel.</p>

<p>The Editor Panel is the workspace for creating the integrated circuits. One can drag-and-drop components from the Prototype Panel into the Editor Panel. Components in the Editor Panel can be selected and moved around be simply clicking them and dragging them arround. By clicking on one of the output ports of a component on can create a wire to connect an output to the input port a  different component.</p>')