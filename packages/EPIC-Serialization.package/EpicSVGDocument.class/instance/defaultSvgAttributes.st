constants
defaultSvgAttributes

	^ Dictionary new
		at: 'xmlns' put: 'http://www.w3.org/2000/svg';
		at: 'xmlns:xlink' put: 'http://www.w3.org/1999/xlink';
		at: 'xmlns:ev' put: 'http://www.w3.org/2001/xml-events';
    		at: 'version' put: '1.1';
		at: 'baseProfile' put: 'full';
		yourself