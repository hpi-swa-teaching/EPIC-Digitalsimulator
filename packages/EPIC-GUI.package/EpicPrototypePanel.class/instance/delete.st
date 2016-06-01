deletion
delete
	"Create a copy because the listing itself is manipulated."
	self submorphs copy do: [:eachSubMorph |
		eachSubMorph delete]