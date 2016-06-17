pages
EpicAndHelp

	^ HelpTopic
		title: 'AND'
		contents: (EpicHelp showHTML: 
'<h1>AND Gate</h1>
'), 
(EpicHelp showImage: 'gate_and'),
(EpicHelp showHTML: '
<p>The bitwise AND-gate is a basic logic gate. It behaves like the truth table below.</p>

Table:
Input 1 | Input 2 | Output
-------------------------------------
     0     |      0    |      0
     0     |      1    |      0
     1     |      0    |      0
     1     |      1    |      1')