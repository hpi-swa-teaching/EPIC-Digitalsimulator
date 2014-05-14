Ich bin ein Schaltkreis, welcher aus mehreren UnterSchaltkreisen bestehen kann. Es besteht die Möglichkeit mich als XML-Dokument zu exportieren (#asXMLDocument). Meine äußeren Ports werden auf die entsprechenden inneren Ports gemappt. 

Instance Variables
	fullyQualifiedName:			<String>
	initialHeight:				<Integer>
	innerInputPorts:				<OrderedCollection>
	innerOrigin:					<Point>
	innerOutputPorts:			<OrderedCollection>
	subComponents:			<OrderedCollection>

fullyQualifiedName
	- Name der den genauen Pfad angibt, in welchem Package der Schaltkreis liegt (epic.standard.and)

initialHeight
	- Höhe

innerInputPorts
	- Verweis auf die InputPorts innerhalb des Schaltkreises

innerOrigin
	- obere linke Ecke an der die Schaltung ausgerichtet wird

innerOutputPorts
	- Verweis auf die inneren OutputPorts

subComponents
	- die Unterkomponenten die ich enthalte
