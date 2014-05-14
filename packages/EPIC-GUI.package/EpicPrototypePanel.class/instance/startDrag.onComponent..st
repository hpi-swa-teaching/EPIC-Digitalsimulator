event handling
startDrag: anEvent onComponent: aComponent
	| draggee |
	draggee := EpicDragContainer containingCopyOf: aComponent.
	anEvent hand grabMorph: draggee.
	self triggerEvent: #componentGrabbed with: draggee