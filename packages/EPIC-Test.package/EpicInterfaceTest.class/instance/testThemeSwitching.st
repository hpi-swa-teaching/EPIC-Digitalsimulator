component testing
testThemeSwitching
	self createSwitchLampSetup.
	self window componentStyle: #iec.
	self assert: [(EpicConfiguration instanceFor: self window) componentStyle == #iec].
	self window componentStyle: #din.
	self assert: [(EpicConfiguration instanceFor: self window) componentStyle == #din].
	self window componentStyle: #ansi.
	self assert: [(EpicConfiguration instanceFor: self window) componentStyle == #ansi].
	self window componentStyle: #epic.
	self assert: [(EpicConfiguration instanceFor: self window) componentStyle == #epic].
	