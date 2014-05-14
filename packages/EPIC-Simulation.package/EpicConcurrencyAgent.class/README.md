Ich bin ein Agent, der die Verwendung von parallel laufenden Aufgaben vereinfacht.
Ich kümmere mich um einen neuen Prozess, der unterbrechbar und fortführbar ist. Mein aktuellen Zustand wird durch #running, #waiting, #aborting, ... beschreiben.

Die parallel laufende Aufgabe ist optimalerweise eine Endlosschleife. Der Rumpf der Schleife wird mir als Block übergeben. Dies geschieht mittels #startConcurrentInLoop:.
Vor jedem Ausführen prüfe ich, ob ein Abbruch/Pausieren signalisiert wurde.

Zudem sollte der mir übergebene Block keine externen Wait-Objekte verwenden. Wenn er blockierend warten möchte, sollte er meine wait*-Methoden verwenden, damit bei einem Abbruch auch "höflich" und nicht "brutal" beendet wird. 