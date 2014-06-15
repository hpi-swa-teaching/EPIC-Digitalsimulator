testing
testPreferences

	self deny: [Preferences cmdDotEnabled].
	self deny: [Preferences cmdGesturesEnabled].
	self deny: [Preferences cmdKeysInText]