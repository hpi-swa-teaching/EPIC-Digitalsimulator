automation
checkClassesUntilDone

	[self uncheckedClasses isEmpty] whileFalse: [
		self workOffUncheckedClasses]