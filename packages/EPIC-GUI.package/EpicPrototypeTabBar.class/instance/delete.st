deletion
delete
	"Create a copy because the listing itself is manipulated."
	self tabs copy do: [:eachTab |
		eachTab delete]