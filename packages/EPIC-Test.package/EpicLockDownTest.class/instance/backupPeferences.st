running
backupPeferences
	
	self class needBackup do: [ :prefrenceName |
		self preferences at: prefrenceName put: (Preferences valueOfPreference:  prefrenceName)]