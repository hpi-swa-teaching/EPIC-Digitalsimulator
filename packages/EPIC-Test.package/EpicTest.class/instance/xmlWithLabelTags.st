xml
xmlWithLabelTags
	^ ReadStream on: '<?xml  version="1.0" encoding="UTF-8" ?>
<circuit delay="1" name="hoschi">
	<interface>
		<input>
			<port label="portLabel1" name="innerInput1"/> 
		</input>
		<output>
			<port label="portLabel2" name="innerOutput1"/> 
		</output>
	</interface>
	<implementation>
		<diagram>
			<components>
				<component name="component1" type="epic.primitives.and" x="215" y="160"/> 
				<component name="component2" type="epic.primitives.and" x="95" y="130"/> 
			</components>
			<connections>
				<wire startComponent="component2" startPort="output1" targetComponent="component1" targetPort="input1"/> 
				<wire startComponent="component1" startPort="output1" targetComponent="self" targetPort="innerOutput1"/> 
				<wire startComponent="self" startPort="innerInput1" targetComponent="component2" targetPort="input2"/> 
			</connections>
		</diagram>
	</implementation>
</circuit>'