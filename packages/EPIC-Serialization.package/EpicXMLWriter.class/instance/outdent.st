private
outdent
	self currentIndent ifNotNil: [
		self currentIndent: self currentIndent - 2.
		self stream skip: -1 	"delete last written character"
	]