deletion
delete
	"Kopie erstellen, da die Auflistung selbst manipuliert wird"
	self tabs copy do: [:eachTab |
		eachTab delete
	]