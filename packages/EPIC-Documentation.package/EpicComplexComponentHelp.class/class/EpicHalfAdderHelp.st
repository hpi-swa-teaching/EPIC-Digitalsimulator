as yet unclassified
EpicHalfAdderHelp

	^ HelpTopic
		title: 'HALF ADDER'
		contents: (EpicHelp showHTML: 
'<h1>HALF ADDER Gate</h1>
'), 
(EpicHelp showImage: 'gate_halfadder'),
(EpicHelp showHTML: '
<p>The HALF ADDER is used to add two binary inputs together. The output ports, labeled S for sum and C for carry, behave like the following truth table. The carry bit represents a possible overflow into the next digit of a multi-digit addition.

Table:
Input 1 | Input 2 | Output S 	| Ouput C
--------------------------------------------------------
     0     |      0    |      0 		| 	0	
     0     |      1    |      1 		|	0
     1     |      0    |      1 		|	0
     1     |      1    |      1 		|	1')