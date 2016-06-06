as yet unclassified
testBasicClipGroup

	| clipRect |
	clipRect := Rectangle origin: 0@0 corner: 10@10.
	self document clipGroupWith: clipRect.
	self assert: self basicClipGroup equals: self document asString