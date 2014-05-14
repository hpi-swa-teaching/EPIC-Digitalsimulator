Ich überschreibe die Nachrichten #initialize und #postOpenInitialize des EpicWindows und stelle somit ein Fenster dar, das auch in der Testumgebung verwendet werden kann.


Anmerkung der Autoren:

Aus einem uns vollkommen unerfindlichen Grund laufen die Tests aus EpicInterfaceTest nicht, wenn dort anstelle des EpicTestWindows das "normale" EpicWindow verwendet wird.
	Der alte Stand von EpicWindow >> #initialize war der hier enthaltene.
	Im Rahmen des Refactorings haben wir uns jedoch dazu entschlossen, diese Nachricht ein wenig aufzuspalten und einige (nicht unmittelbar ersichtliche) Abhängigkeiten zu entfernen (siehe Kommentare in EpicTestWindow >> #initialize). Hierdurch hat sich zum Einen #initialize verkürzt und folgt nun auch dem Single Level of Abstraction Principle (jedenfalls mehr als vorher).
	Allerdings hatte dies zur Folge dass nun bei den Testfällen das EpicWindow angezeigt wurde und die DragEvents nicht korrekt bearbeitet wurden, wodurch dementsprechend die Interfacetests fehlschlugen. Um die Tests wieder zum Laufen zu bringen, wurde diese Klasse eingefügt, deren einziger Unterschied zu EpicWindow in der Reihenfolge der Initialisierungsschritte liegt.
	
	Wer das nachvollziehen möchte, setze in EpicTestProgram >> #startProgram anstelle von EpicTestWindow die Klasse EpicWindow ein.
	