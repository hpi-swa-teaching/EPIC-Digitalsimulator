as yet unclassified
showHTML: aHTMLString
	^ (aHTMLString copyReplaceAll: String cr with: '<br>') asTextFromHtml 