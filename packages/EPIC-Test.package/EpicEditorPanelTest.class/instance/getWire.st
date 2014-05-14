bundeling
getWire
	| input output |
	input := EpicInputPort new.
	output := EpicOutputPort new.
	^EpicWire from: input to: output.