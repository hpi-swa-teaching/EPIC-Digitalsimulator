running
resetPreferences
	
	self preferences keysAndValuesDo: [ :key :value |
		Preferences setPreference: key toValue: value]