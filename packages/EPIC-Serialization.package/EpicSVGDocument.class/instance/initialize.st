initialize-release
initialize
	
	super initialize.
	self
		nextId: 0;
		xmlVersion: self defaultXmlVersion;
		encoding: self defaultEncoding;
		dtd: self defaultDtd;
		svgElement: (XMLElement named: self svgElementName);
		targetElement: self svgElement;
		defsElement: (XMLElement named: self defsElementName);
		addElement: self svgElement.
	self svgElement
		setAttributes: self defaultSvgAttributes;
		addElement: self defsElement
		
		
		