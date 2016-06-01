event handling
startDrag: anEvent onComponent: aComponent
	| draggee |
	draggee := EpicDragContainer containingCopyOf: aComponent.
	draggee position: anEvent hand position - (draggee extent // 2).
	anEvent hand grabMorph: draggee.
	self triggerEvent: #componentGrabbed with: draggee