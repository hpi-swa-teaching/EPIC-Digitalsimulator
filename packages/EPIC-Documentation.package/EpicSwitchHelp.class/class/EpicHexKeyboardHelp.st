pages
EpicHexKeyboardHelp

	^ HelpTopic
		title: 'Hex Keyboard'
		contents: (EpicHelp showHTML: 
'<h1>Hex Keyboard</h1>
'), 
(EpicHelp showImage: 'source_hexkeyboard'),
(EpicHelp showHTML: '
<p>A source whose output represents the binary number of the button clicked by the user.</p>')