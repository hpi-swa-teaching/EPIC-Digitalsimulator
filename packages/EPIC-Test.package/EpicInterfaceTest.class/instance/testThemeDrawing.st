component testing
testThemeDrawing
	EpicStandardGate allSubclasses 
		do: [ :eachSubclass | | gate |
			gate := eachSubclass new.
			self iterateThemesFor: gate.
			gate delete
		]