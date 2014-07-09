combining
combineSelectedComponentsToNamedCircuitAskPortNumbers: aCircuitName
	| blackbox |

	blackbox := self combineSelectedComponents.
	
	blackbox
		fullyQualifiedName: aCircuitName.
	
	self changePortCountFor: blackbox.
	
	blackbox resizeToPortCount;
	 	reLayoutPorts;
		save.
	