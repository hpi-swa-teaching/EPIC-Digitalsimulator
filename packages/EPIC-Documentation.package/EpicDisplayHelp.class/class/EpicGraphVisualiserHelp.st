pages
EpicGraphVisualiserHelp

	^ HelpTopic
		title: 'Graph Visualiser'
		contents: (EpicHelp showHTML: 
'<h1>Graph Visualiser</h1>
'), 
(EpicHelp showImage: 'display_graphvisualiser'),
(EpicHelp showHTML: '
<p>A display that plots a graph of the recent input. It consists of an input and an output port. The output port functions as an pass-through port to use further use the signal </p>')