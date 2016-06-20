as yet unclassified
EpicWaitHelp

	^ HelpTopic
		title: 'WAIT'
		contents: (EpicHelp showHTML: 
'<h1>WAIT Component</h1>
'), 
(EpicHelp showImage: 'gate_wait'),
(EpicHelp showHTML: '
<p>The WAIT component adds a delay between the receipt of the input signal and the output of the output signal. The component waits 1 second (1000ms) before forwarding the signal.')