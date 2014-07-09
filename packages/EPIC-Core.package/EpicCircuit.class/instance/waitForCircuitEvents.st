component testing
waitForCircuitEvents
	| semaphore |
	semaphore := Semaphore new.
	[ (Delay forSeconds: 0.05 * self subComponents size) wait. semaphore signal ] fork.
	semaphore wait