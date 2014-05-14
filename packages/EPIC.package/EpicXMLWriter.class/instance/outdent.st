private
outdent
	self currentIndent ifNotNil: [
		self 
			currentIndent: self currentIndent - 1;
			writeIndent;
			currentIndent: self currentIndent - 1
	]