as yet unclassified
EpicRegisterHelp

	^ HelpTopic
		title: 'Register'
		contents: (EpicHelp showHTML: 
'<h1>Register</h1>
'), 
(EpicHelp showImage: 'gate_register'),
(EpicHelp showHTML: '
<p>The 4-bit save register is used to save multiple bits in one component. It has 5 input ports. The first 4 are used as the data input for the 4 output parts. The fifth input is the clock. When it is set form 0 to 1 all states of the input ports get saved and the output ports get set.</p>')