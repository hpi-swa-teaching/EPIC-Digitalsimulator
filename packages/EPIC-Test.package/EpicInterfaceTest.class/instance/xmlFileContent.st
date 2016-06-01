running
xmlFileContent
	"Creates filecontent that ensures that the tests also work in the first execution."
	^ '<?xml  version="1.0" encoding="UTF-8" ?>
<circuit delay="1" name="epic.test.test" xmlns="http://www.chaos-wg.net/epic/2010/07/circuitML" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.chaos-wg.net/epic/2010/07/circuitML http://www.chaos-wg.net/epic/2010/07/circuitML.xsd">
	<interface>
		<input/> 
		<output/> 
	</interface>
	<implementation>
		<diagram>
			<components>
				<component name="component1" type="epic.primitives.nand" x="180" y="160"/> 
				<component name="component2" type="epic.primitives.and" x="180" y="160"/> 
				<component name="component3" type="epic.primitives.xnor" x="180" y="160"/> 
				<component name="component4" type="epic.primitives.xor" x="180" y="160"/> 
				<component name="component5" type="epic.primitives.nor" x="180" y="160"/> 
				<component name="component6" type="epic.primitives.or" x="180" y="160"/> 
				<component name="component7" type="epic.primitives.equal" x="180" y="160"/> 
				<component name="component8" type="epic.primitives.not" x="180" y="160"/> 
				<component name="component9" type="epic.primitives.one" x="185" y="160"/> 
				<component name="component10" type="epic.primitives.pushbutton" x="185" y="160"/> 
				<component name="component11" type="epic.primitives.switch" x="185" y="160"/> 
				<component name="component12" type="epic.primitives.clock" x="185" y="160"/> 
				<component name="component13" type="epic.primitives.sevensegment" x="185" y="144"/> 
				<component name="component14" type="epic.primitives.lamp" x="160" y="160"/> 
			</components>
			<connections/> 
		</diagram>
	</implementation>
</circuit>
'