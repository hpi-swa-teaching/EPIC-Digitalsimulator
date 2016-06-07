tab manipulation
tabClicked: aTab
	self triggerEvent: #tabClicked with: aTab.
	"force redraw, because otherwise the former active button will be greyed out until hovered"
	self invalidRect: self bounds