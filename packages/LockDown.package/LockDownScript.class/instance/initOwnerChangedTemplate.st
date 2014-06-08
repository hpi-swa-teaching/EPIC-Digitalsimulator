deploying
initOwnerChangedTemplate
	
	| method |
	method := (LockDownScript >>#ownerChanged) copy.
	method methodClass: self program class.
	method selector: #ownerChanged.
	self program class methodDict at: #ownerChanged put: method.