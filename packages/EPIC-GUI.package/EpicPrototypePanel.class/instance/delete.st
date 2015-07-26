deletion
delete
	"Kopie erstellen, da die Auflistung selbst manipuliert wird"
	self submorphs copy do: [:eachSubMorph |
		eachSubMorph delete]