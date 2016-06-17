pages
EpicPushButtonHelp

	^ HelpTopic
		title: 'Push Button'
		contents: (EpicHelp showHTML: 
'<h1>Push Button</h1>
'), 
(EpicHelp showImage: 'source_pushbutton'),
(EpicHelp showHTML: '
<p>A source whose output is only true if it is clicked by the user, otherwise the output is false.</p>')