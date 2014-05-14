combining
addWiresForCombinedComponent: aComponent
	(aComponent allPorts 
		gather: [:eachPort | eachPort wires])
		do: [:eachWire |
			self triggerEvent: #wireAdded with: eachWire
		]
	