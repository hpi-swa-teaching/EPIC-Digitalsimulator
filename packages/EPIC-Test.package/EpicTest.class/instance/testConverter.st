component testing
testConverter

| component |
	
	component := EpicConverter new.
	
	self simulate: component with: #(false false false false) expecting: #(true true true true true true false).
	self simulate: component with: #(true false false false) expecting: #(false true true false false false false).
	self simulate: component with: #(false true false false) expecting: #(true true false true true false true).
	self simulate: component  with: #(true true false false) expecting: #(true true true true false false true).
	self simulate: component  with: #(false false true false) expecting: #(false true true false false true true).
	self simulate: component  with: #(true false true false) expecting: #(true false true true false true true).
	self simulate: component  with: #(false true true false) expecting: #(true false true true true true true).
	self simulate: component  with: #(true true true false) expecting: #(true true true false false false false).
	self simulate: component  with: #(false false false true) expecting: #(true true true true true true true).
	self simulate: component  with: #(true false false true) expecting: #(true true true true false true true).
	self simulate: component  with: #(false true false true) expecting: #(true true true false true true true).
	self simulate: component  with: #(true true false true) expecting: #(false false true true true true true).
	self simulate: component  with: #(false false true true) expecting: #(true false false true true true false).
	self simulate: component  with: #(true false true true) expecting: #(false true true true true false true).
	self simulate: component  with: #(false true true true) expecting: #(true false false true true true true).
	self simulate: component  with: #(true true true true) expecting: #(true false false false true true true).