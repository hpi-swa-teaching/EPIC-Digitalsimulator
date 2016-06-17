pages
EpicDemuxHelp

	^ HelpTopic
		title: 'DEMUX'
		contents: (EpicHelp showHTML: 
'<h1>DEMUX</h1>
'), 
(EpicHelp showImage: 'gate_demux'),
(EpicHelp showHTML: '
<p>Allows the user to select the output of the incoming value. To choose which one of the output ports the input is passed-though one uses the 2 selector ports on the bottom of the component. The selctor uses binary input to select the port.</p>')