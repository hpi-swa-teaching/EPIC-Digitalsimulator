Ich erzeuge aus XML-Dokumenten, die im EPIC-XML-Format vorliegen, neue Schaltkreise.

Instance Variables
	circuit:		<EpicCircuit>
	portMap:		<Dictionary>
	primitiveStore:		<Collection>

circuit
	- der fertige Schaltkreis

portMap
	- die Ports, die im <interface>-Tag des XML-Dokuments spezifiziert wurden. Diese Map wird benötigt, um beim parsen der Verbindungen die tatsächlichen Ports wiederzufinden.

primitiveStore
	- Auf die primitiven Elemente (Subklassen von EpicGate), kann in EPIC-XML über den Namensraum epic.primitives zugegriffen werden. Diese Collection enthält alle gültigen Primitiven.
