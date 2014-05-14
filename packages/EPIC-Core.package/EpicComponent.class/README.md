Ich bin die abstrakte Basisklasse aller Komponenten. Bei meiner Erstellung erzeuge ich mittels #createInput/Outputports meine Ports. Meine Schaltfunktion wird mittels #simulateWith: inputValues realisiert, indem die Werte die an meinen Inputports anliegen verarbeitet und an die Outputports weitergeleitet werden.

Instance Variables
	inputPorts:			<OrderedCollection>
	outputPorts:		<OrderedCollection>
	selected:			<Boolean>

inputPorts
	- Sammlung aller Eingangsports

outputPorts
	- Sammlung der Ausgangsports

selected
	- gibt an ob die Komponenten gerade markiert ist
