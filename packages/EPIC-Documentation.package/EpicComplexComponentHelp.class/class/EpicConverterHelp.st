as yet unclassified
EpicConverterHelp

	^ HelpTopic
		title: 'Converter'
		contents: (EpicHelp showHTML: 
'<h1>Converter</h1>
'), 
(EpicHelp showImage: 'gate_converter'),
(EpicHelp showHTML: '
<p>The converter is an easy way to drive the 7-segment display from a 4 bit binary input. From the 4 input ports the top one is used for the lowest and the bottom one for the high significant bit.</p>')