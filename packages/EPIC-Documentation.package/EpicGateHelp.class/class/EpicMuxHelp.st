pages
EpicMuxHelp

	^ HelpTopic
		title: 'MUX'
		contents: (EpicHelp showHTML: 
'<h1>MUX</h1>
'), 
(EpicHelp showImage: 'gate_mux'),
(EpicHelp showHTML: '
<p>Allows the user to select the input of the outcoming value. To choose which one of the input ports is passed-though one uses the 2 selector ports on the bottom of the component. The selctor uses binary input to select the port.</p>

Table:
Input 1 | Input 2 | Output
-------------------------------------
     0     |      0    |     e1
     0     |      1    |     e2
     1     |      0    |     e3
     1     |      1    |     e4')