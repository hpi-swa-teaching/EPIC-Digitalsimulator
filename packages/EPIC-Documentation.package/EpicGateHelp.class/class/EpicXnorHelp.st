pages
EpicXnorHelp

	^ HelpTopic
		title: 'XNOR'
		contents: (EpicHelp showHTML: 
'<h1>Xnor Gate</h1>
'), 
(EpicHelp showImage: 'gate_xnor'),
(EpicHelp showHTML: '
<p>The negated bitwise exclusive OR-gate is a basic logic gate. It behaves like the truth table below.</p>

Table:
Input 1 | Input 2 | Output
-------------------------------------
     0     |      0    |      1
     0     |      1    |      0
     1     |      0    |      0
     1     |      1    |      1')