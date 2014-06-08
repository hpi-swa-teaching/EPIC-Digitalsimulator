deploying
initBlueButtonDownTemplate

	| method |
	method := (LockDownScript >>#blueButtonDown: ) copy.
	method methodClass: Morph.
	method selector: #blueButtonDown:  .
	Morph methodDict at: #blueButtonDown:  put: method.