SAR creation
packageVersion: aPackage
	"Aktuelle Version des Pakets holen. Die Info wird benötigt, weil sonst der Import nicht
	möglich ist (geht wohl vor allem um die UUID, wenn ich die Fehlermeldung richtig
	interpretiert habe)."
	^ (MCVersion 
		package: aPackage 
		info: aPackage workingCopy ancestors first)