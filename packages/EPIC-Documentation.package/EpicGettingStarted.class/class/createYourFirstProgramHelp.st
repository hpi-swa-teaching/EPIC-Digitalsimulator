pages
createYourFirstProgramHelp
	^ HelpTopic
		title: 'Create your first program'
		contents: (EpicHelp showHTML: '
<h1>Create your first program</h1>

<p>In this basic tutorial we will create your first simple integrated circuit. This circuit will simulate a configuration of multiple light switches connected to single lamp, where either of the switches controls the lamp..</p>
'), 
(EpicHelp showImage: 'tutorial_01'),
(EpicHelp showHTML: '
<p> When you first open EPIC you are greeted with an empty workspace. This is perfect because we will create our integrated circuit from the ground up.</p>

<p> We will first of all create our 2 input switches. To do that we will switch to the SWITCHES-tab and drag 2 switch components from the Prototype-Panel to the Editor-Panel. Your Workspace should look like this: 
'),
(EpicHelp showImage: 'tutorial_02'),
(EpicHelp showHTML: '
<p>The functionality we need can luckily be provided by a single gate, the XOR-gate. Therefore we simply switch over to the GATE-tab and simply drag-and-drop the XOR-gate over to the workspace. We then connect the output ports of the 2 switches to the 2 input ports of the XOR-gate. To do that we just click on one port and move the mouse to the input port and click again, this sets up the wire between the components. After you connected the wires your circuit should look something like this. </p>
'),
(EpicHelp showImage: 'tutorial_03'),
(EpicHelp showHTML: '
<p>In the last step we just get the lamp component from the DISPLAY-tab and connect the XOR output port to its input. This should complete our little circuit. You can now click on either of the switches to activate the lamp. In the end this should be the integrated circuit:</p>
'),
(EpicHelp showImage: 'tutorial_04'),
(EpicHelp showHTML: '
<p>To save the circuit for later you can simply click on the File > Save As ... Option in the menu bar.</p>')