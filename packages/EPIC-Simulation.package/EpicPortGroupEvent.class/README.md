Ich repräsentiere eine Gruppe von EpicPortEvent-Objekten und fasse diese Zusammen, damit eine Komponente mit mehreren Eingängen nicht unnötig viele Signaländerungen berechnen muss, wenn diese absolut gleichzeitig eintreffen.

Instance Variables
	affectedComponent:		<EpicComponent>
	portEvents:		<OrderedCollection>
	timeStamp:		<Number>

affectedComponent
	- Komponente, die gleichzeitig mehrere Port-Änderungen erhalten soll

portEvents
	- Gruppe von EpicPortEvents, die zum selben Zeitpunkt stattfinden sollen.

timeStamp
	- Zeitpunkt für die Port-Änderungen
