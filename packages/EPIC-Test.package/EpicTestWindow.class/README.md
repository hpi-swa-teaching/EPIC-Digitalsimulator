I overwrite the messages #initialize and #postOpenInitialize of the EpicWindow and thus represent a window that can be used in the testing environment.

Author's note:
[wirtten by fz 07/19/2010, translated by ek 05/31/2016]

Because of a to us inconceivable reason the tests in EpicInterfaceTest won't work if the "normal" EpicWindow is used insetad of the EpicTestWindow.
	The old version of EpicWindow >> #initialize was used for this.
	As part of the refactoring process we decided to split that message and to remove some dependencies (that are not identifiable at first glance, see also the comments in EpicTestWindow >> #initialize). This shortens #initialize and follows the Single Level of Abstraction Principle (at least more than before).
	However, because of this in test cases the EpicWindow is displayed and the DragEvents are not processed correctly which lead to the failure of the interface tests. In order to satisfy those tests this class was created, the only difference being the order of initializationsteps.
	
	If you want to test this put in EpicTestProgram >> #startProgram the class EpicTestWindow in place of EpicWindow.
	