pages
EpicXorHelp

	^ HelpTopic
		title: 'XOR'
		contents: (EpicHelp showHTML: 
'<h1>Xor Gate</h1>
'), 
(EpicHelp showImage: 'gate_xor'),
(EpicHelp showHTML: '
<p>The bitwise exclusive OR-gate is a basic logic gate. It behaves like the truth table below.</p>

Table:
Input 1 | Input 2 | Output
-------------------------------------
     0     |      0    |      0
     0     |      1    |      1
     1     |      0    |      1
     1     |      1    |      0')