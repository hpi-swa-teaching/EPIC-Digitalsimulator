running
backupPeferences
	
	EpicLockDownTest needBackup do: [ :prefrenceName |
		self preferences at: prefrenceName put: (Preferences valueOfPreference:  prefrenceName ifAbsent: true)]