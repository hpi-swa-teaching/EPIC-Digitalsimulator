tab manipulation
notifyGrab: aComponent
	self scrollPane scroller triggerEvent: #componentGrabbed with: aComponent