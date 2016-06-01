I represent a group of EpicPortEvent objects and sum them up so that a component with multiple inputs does not have to calculate unneeded value changes that arrive simultaneously.

Instance Variables
	affectedComponent:		<EpicComponent>
	portEvents:		<OrderedCollection>
	timeStamp:		<Number>

affectedComponent
	- component that receives several changes at the same time

portEvents
	- group of EpicPortEvents that are supposed to happen simultaneously

timeStamp
	- time of the changes
