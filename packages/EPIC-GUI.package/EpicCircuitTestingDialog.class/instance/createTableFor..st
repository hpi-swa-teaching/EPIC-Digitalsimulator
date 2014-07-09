as yet unclassified
createTableFor: aCollection
| view model |

	view:= UiTableView new.
	model := UiPropertyItemNode new.
	
	model addDefaultGroup.
	aCollection do: [ :eachTestCase |
			model addChild: (UiPropertyItemNode new
				at: #first put: (self testCaseDataToHumanReadable: eachTestCase first);
				at: #second put: (self testCaseDataToHumanReadable: eachTestCase second);
				at: #third put: (eachTestCase third);
			yourself)
		].
	
	view
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #first. #editable -> false}) headerText: 'Inputs');
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #second. #editable -> true}) headerText: 'Outputs');
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #third. #editable -> false}) headerText: 'passed');	
		setResizeModeForColumn: 1 to: #rigid; setWidthForColumn: 1 to: 120;
		setResizeModeForColumn: 2 to: #rigid; setWidthForColumn: 2 to: 120;
		setResizeModeForColumn: 3 to: #rigid; setWidthForColumn: 3 to: 50;
		removeVerticalHeader;
		width: 300;
		editTriggers: #(alphaNumericKeyPressed doubleClicked editKeyPressed);
		model: model.
	^ view