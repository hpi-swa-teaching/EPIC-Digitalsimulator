execution
execute
	| editorPanel tunnelEnd command |
	editorPanel := components first owner.
	self components do: [ :aComponent |
		aComponent isTunnelOpening
			ifTrue: [
				tunnelEnd := aComponent createTunnelEnd.
				tunnelEnd position: aComponent position + 20.
				command := ((EpicAddComponentCommand newFor: editorPanel)
							component: tunnelEnd;
							yourself).
				editorPanel handleOutsideCommand: command]]