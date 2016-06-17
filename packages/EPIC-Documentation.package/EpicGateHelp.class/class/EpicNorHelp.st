pages
EpicNorHelp

	^ HelpTopic
		title: 'NOR'
		contents: (EpicHelp showHTML: 
'<h1>NOR Gate</h1>
'), 
(EpicHelp showImage: 'gate_nor'),
(EpicHelp showHTML: '
<p>The bitwise NOR-gate is a basic logic gate. It behaves like the truth table below.</p>

Table:
Input 1 | Input 2 | Output
-------------------------------------
     0     |      0    |      1
     0     |      1    |      0
     1     |      0    |      0
     1     |      1    |      0')