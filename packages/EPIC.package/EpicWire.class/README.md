Ich bin ein Kabel, und stelle die Verbindung zwischen zwei Ports von Komponenten her. Bei der Erstellung wird sichergestellt, dass Kabel nur zwischen Inputport und OutputPorts gezogen werden können.

Instance Variables
	endPort:				<EpicPort>
	grabbedPointIndex:		<Integer>
	lineWidth:				<Integer>
	selected:				<Boolean>

endPort
	- Verweis auf den Endport, auf den das Kabel führt

grabbedAnchorIndex
	- falls das Kabel gerade bearbeitet wird , wird hier der Index des aktuell ausgewählten 		Ankerpunkts gespeichert

lineWidth
	- Linienstärke des Kabels

selected
	- falls das Kabel ausgewählt ist, ist dieser Parameter True
