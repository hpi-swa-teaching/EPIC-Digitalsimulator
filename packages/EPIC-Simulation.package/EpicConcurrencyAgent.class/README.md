I am an agent who makes the usage of parallel working tasks easier.
I take care of a new process that is interruptible and continueable. My current statt is described by #running, #waiting, #aborting, etc.

The parallel working task is ideally an infinite loop. The body of the loop is given to me as a block. This is done via #startConcurrentInLoop:..
Before every execution I check if a breack was signalised.

The given block should not use external wait objects. If the block wants to wait blocking other tasks it should use my wait*-methods so that other taks are stopped "politely" by me and not "brutally".