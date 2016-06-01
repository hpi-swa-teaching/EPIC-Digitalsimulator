I create new circuits from XML-documents that are in EPIC-XML-format.

Instance Variables
	circuit:		<EpicCircuit>
	portMap:		<Dictionary>
	primitiveStore:		<Collection>

circuit
	- the complete circuit

portMap
	- the ports that are specified in the <interface>-tag of the XML-document. This map is needed in the parsing of connections to find the actual connected ports

primitiveStore
	- The primitive elements (subclasses of EpicGates) can be accessed in EPIC-XML using name space epic.primitives. This collection contains all valid primitives.