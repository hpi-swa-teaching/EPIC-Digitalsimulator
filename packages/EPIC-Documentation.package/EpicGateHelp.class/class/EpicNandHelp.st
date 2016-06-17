pages
EpicNandHelp

	^ HelpTopic
		title: 'NAND'
		contents: (EpicHelp showHTML: 
'<h1>NAND Gate</h1>
'), 
(EpicHelp showImage: 'gate_nand'),
(EpicHelp showHTML: '
<p>The bitwise NAND-gate is a basic logic gate. It behaves like the truth table below.</p>

Table:
Input 1 | Input 2 | Output
-------------------------------------
     0     |      0    |      1
     0     |      1    |      1
     1     |      0    |      1
     1     |      1    |      0')