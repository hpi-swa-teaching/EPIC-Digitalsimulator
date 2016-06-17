pages
EpicDFlipFlopHelp

	^ HelpTopic
		title: 'D Flip-Flop'
		contents: (EpicHelp showHTML: 
'<h1>Delay Flip-Flop</h1>
'), 
(EpicHelp showImage: 'gate_dflipflop'),
(EpicHelp showHTML: '
<p>It consists of a D- and a C-Input together with a Q and inverse Q output. When the clock signal is one, the flip flop saves the signal on the data pin.</p>

Table:
Input D | Input C | Output Q 
-----------------------------------------
     X     |      0    |     Save 
     1     |      1    |     Set 1 
     0     |      0    |     Set 0')