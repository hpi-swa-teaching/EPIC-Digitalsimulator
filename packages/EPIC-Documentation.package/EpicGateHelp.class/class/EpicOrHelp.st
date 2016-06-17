pages
EpicOrHelp

	^ HelpTopic
		title: 'OR'
		contents: (EpicHelp showHTML: 
'<h1>Or Gate</h1>
'), 
(EpicHelp showImage: 'gate_or'),
(EpicHelp showHTML: '
<p>The bitwise OR-gate is a basic logic gate. It behaves like the truth table below.</p>

Table:
Input 1 | Input 2 | Output
-------------------------------------
     0     |      0    |      0
     0     |      1    |      1
     1     |      0    |      1
     1     |      1    |      1')