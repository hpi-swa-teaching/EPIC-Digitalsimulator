pages
componentHelp

	^ HelpTopic
		title: 'Components'
		contents: (EpicHelp showHTML: 
'<h1>Components</h1>

<p>Components are the heart of every integrated circuit in EPIC. They implement the basic functionalities, such as logical operation or providing user in- and output.</p>
'),
(EpicHelp showImage: 'component'),
(EpicHelp showHTML: '
<p>To interact with them every component has ports to connect wires to. There are two different types of ports. Ports on the left of the componet are used to provide input for the component. Ports on the right are used to output the result. Some components (like MUX and DEMUX) might also have selection ports on the bottom to select a specific input.</p>

<p>Components can be connected by wires. To connect two components click on an output of a component and drag a wire to a input port of the second. Signals are now send from one port to other via the wire.</p>

<p>It is possible to change the style of the components via the Settings tab of the menu bar. EPIC provides 4 different style types: EPIC, IEC, ANSI and DIN. The default is the very explanatory and therefore easy to use EPIC style.</p>')