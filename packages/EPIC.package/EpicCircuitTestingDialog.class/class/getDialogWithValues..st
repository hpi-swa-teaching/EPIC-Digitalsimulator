as yet unclassified
getDialogWithValues: aCollection
	| dialog |
	dialog := self new
		initializeWithTitle: 'Test Circuit' withData: aCollection.

	dialog open.
	
	dialog cancelled
		ifTrue: [^ aCollection ]
		ifFalse: [^ (dialog getTableValues) ]