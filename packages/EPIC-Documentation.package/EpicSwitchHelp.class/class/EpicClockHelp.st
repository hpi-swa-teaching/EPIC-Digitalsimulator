pages
EpicClockHelp

	^ HelpTopic
		title: 'Clock'
		contents: (EpicHelp showHTML: 
'<h1>Clock</h1>
'), 
(EpicHelp showImage: 'source_clock'),
(EpicHelp showHTML: '
<p>A source whose output changes periodically every second (1000ms).</p>')