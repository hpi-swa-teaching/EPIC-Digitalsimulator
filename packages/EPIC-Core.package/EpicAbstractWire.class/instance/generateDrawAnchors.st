drawing
generateDrawAnchors
	| inBundle section |
	inBundle := false.
	self drawAnchorPoints removeAll.
	
	section := OrderedCollection new.
	section add: (self startPoint ).
	
	self anchorPoints do: [:each|
		inBundle ifFalse: [
			each isBundleAnchor ifFalse: [
				section add: each point]
			ifTrue: [
				inBundle := true.
				section add: each point.
				self drawAnchorPoints add: section.
				section := OrderedCollection new]]
		ifTrue:[
			each isBundleAnchor ifTrue: [
				each isBundleEnd ifTrue:[
					section add: each point.
					inBundle :=false]]]].
	section add: (self endPoint ).
	self drawAnchorPoints add: section.
	^self drawAnchorPoints 