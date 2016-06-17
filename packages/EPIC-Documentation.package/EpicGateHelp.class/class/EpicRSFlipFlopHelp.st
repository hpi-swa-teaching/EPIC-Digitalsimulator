pages
EpicRSFlipFlopHelp

	^ HelpTopic
		title: 'RS Flip-Flop'
		contents: (EpicHelp showHTML: 
'<h1>RS Flip-Flop</h1>
'), 
(EpicHelp showImage: 'gate_rsflipflop'),
(EpicHelp showHTML: '
<p>The Reset-Set-Flip-Flop has a R- and a S-input togther with a Q and inverse Q output. S is used to set the output to 1 and R to reset it back to 0 </p>

Table:
Input R | Input S | Output Q 
-----------------------------------------
     0     |      0    |     Save 
     0     |      1    |    Set (1) 
     1     |      0    |   Reset (0)
     1 	|	 1 	 |	unused')