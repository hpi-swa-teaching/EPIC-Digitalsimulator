method-templates
blueButtonDown: anEvent
	"Special gestures (cmd-mouse on the Macintosh; Alt-mouse on Windows and Unix) allow a mouse-sensitive morph to be moved or bring up a halo for the morph."
	| h tfm doNotDrag |
	Preferences cmdGesturesEnabled
		ifFalse: [ ^self ].

	h _ anEvent hand halo.
	"Prevent wrap around halo transfers originating from throwing the event back in"
	doNotDrag _ false.
	h ifNotNil:[
		(h innerTarget == self) ifTrue:[doNotDrag _ true].
		(h innerTarget hasOwner: self) ifTrue:[doNotDrag _ true].
		(self hasOwner: h target) ifTrue:[doNotDrag _ true]].

	tfm _ (self transformedFrom: nil) inverseTransformation.

	"cmd-drag on flexed morphs works better this way"
	h _ self addHalo: (anEvent transformedBy: tfm).
	doNotDrag ifTrue:[^self].
	"Initiate drag transition if requested"
	anEvent hand 
		waitForClicksOrDrag: h
		event: (anEvent transformedBy: tfm)
		selectors: { nil. nil. nil. #dragTarget:. }
		threshold: 5.
	"Pass focus explicitly here"
	anEvent hand newMouseFocus: h.