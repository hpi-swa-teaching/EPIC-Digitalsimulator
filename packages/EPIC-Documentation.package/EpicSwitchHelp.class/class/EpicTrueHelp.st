pages
EpicTrueHelp

	^ HelpTopic
		title: 'True'
		contents: (EpicHelp showHTML: 
'<h1>True</h1>
'), 
(EpicHelp showImage: 'source_true'),
(EpicHelp showHTML: '
<p>A source whose output is always true.</p>')