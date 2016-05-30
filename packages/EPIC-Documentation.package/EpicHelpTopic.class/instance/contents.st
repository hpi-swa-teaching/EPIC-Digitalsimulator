accessing
contents

	^ (super contents copyReplaceAll: String cr with: '<br>') asTextFromHtml