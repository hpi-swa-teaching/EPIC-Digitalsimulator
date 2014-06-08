deploying
initHandleMouseDownTemplate

	| method |
	method := (LockDownScript >>#handleMouseDown:) copy.
	method methodClass: Morph.
	method selector: #handleMousedown: .
	Morph methodDict at: #handleMouseDown: put: method.