I am a command executor. I execute commands given to me and stack undoable commands in case I have to undo them.

Instance Variables
	commandStack:		<Object>
	presumedCommand:		<Object>

commandStack
	- stack of executed commands that are undoable

presumedCommand
	- a not yet executed command that is noted for execution
