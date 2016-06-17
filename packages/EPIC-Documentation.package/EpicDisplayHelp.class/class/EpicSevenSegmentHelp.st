pages
EpicSevenSegmentHelp

	^ HelpTopic
		title: 'Seven Segment Display'
		contents: (EpicHelp showHTML: 
'<h1>Seven Segement Display</h1>
'), 
(EpicHelp showImage: 'display_segmentdisplay'),
(EpicHelp showHTML: '
<p>A display that can show the hexadecimal numbers from 0 to F. Each input port represent a segment of the display. The mapping is shown in the graphics below. To drive the seven segment display from binary numbers you can use the converter compent (see GATE-tab). </p>'),
(EpicHelp showImage: 'display_segmentdisplay_mapping')