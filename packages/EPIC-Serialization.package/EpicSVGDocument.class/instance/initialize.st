initialize-release
initialize
	
	super initialize.
	self
		xmlVersion: self defaultXmlVersion;
		encoding: self defaultEncoding;
		dtd: self defaultDtd;
		svgElement: (XMLElement named: self svgElementName).
	self svgElement setAttributes: self defaultSvgAttributes
		
		
		