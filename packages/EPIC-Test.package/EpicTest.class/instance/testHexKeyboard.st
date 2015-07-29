component testing
testHexKeyboard

| component startx starty key|
	
	component := EpicHexKeyboard new.
	startx:= 10.
	starty:= 10.
	0 to: 15 do: [:i | 
		key:= (component morphsAt: (startx+((i \\ 4) *10)@starty+ ((i // 4) *10)) ) first.
		component simulateWith: key value.
		self assert: [(component outputValues) first = (key value bitAt: 1) strictlyPositive].
		self assert: [(component outputValues) second  = (key value bitAt: 2) strictlyPositive].
		self assert: [(component outputValues) third = (key value bitAt: 3) strictlyPositive].
		self assert: [(component outputValues) fourth = (key value bitAt: 4) strictlyPositive]]