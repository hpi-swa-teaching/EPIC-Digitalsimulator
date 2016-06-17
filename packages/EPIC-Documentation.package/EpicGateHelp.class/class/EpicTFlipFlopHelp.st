pages
EpicTFlipFlopHelp

	^ HelpTopic
		title: 'T Flip-Flop'
		contents:(EpicHelp showHTML: 
'<h1>T Flip-Flop</h1>
'), 
(EpicHelp showImage: 'gate_tflipflop'),
(EpicHelp showHTML: '
<p>The Toogle-Flip-Flop has T- and C-input ports. The output ports are Q and inverse Q. It switches its state every time the clock ticks, therefore set from 0 to 1, and the T-input is also set to 1.</p>

Table:
Input T | Input C | Output Q 
-----------------------------------------
     0     |      0    |     Save 
     0     |      1    |     Save 
     1     |      0    |    toggle
     1 	|	 1 	 |	toggle')