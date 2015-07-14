simulation
simulateWith: inputValues
	|a b c d|
	a:= inputValues first. 
	b:= inputValues second.
	c:= inputValues third.
	d:= inputValues fourth.					
	self outputPorts first setValue: 
	((d and: c not and: b not) or: (d  not and: c and: a) or: (c not and: a not) or: (d and: a not) or: (d not and: b) or: (c and: b) ).
	self outputPorts second setValue: 
	((d not and: b not and: a not) or: (d  and: b not and: a) or: (d not and: b and: a) or: (c not and: a not) or: (d not and: c not)).
	self outputPorts third setValue: 
	((d not and: b not ) or: (d  and: c not) or: (d not and: c) or: (b not and: a ) or: (d not and: a )).
	self outputPorts fourth setValue: 
	((d not and: c not and: a not ) or: (c not  and: b and: a) or: (c and: b and: a not) or: (c and: b not and: a ) or: (d and:  b not)).
	self outputPorts fifth setValue: 
	((b  and: a not ) or: (d  and: b) or: (d  and: c) or: (c not and: a not )).
	self outputPorts sixth setValue: 
	((d not and: c and: b not ) or: (b not and: a not) or: (d and: c not) or: (c and: a not ) or: (d and: b )).
	self outputPorts seventh setValue: 
	((d not and: c and: b not ) or: (d and: c not) or: (b and: a not) or: (c not and: b ) or: (d and: a )).