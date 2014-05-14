duplication
duplicate
	| duplicate |
	duplicate := self class new.
	duplicate 
		xmlDocument: self xmlDocument;
		fullyQualifiedName: self fullyQualifiedName.
	"eachPort copy dauert zu lange."
	self ports do: [ :eachPort | duplicate addPort: eachPort class new ].
	^ duplicate