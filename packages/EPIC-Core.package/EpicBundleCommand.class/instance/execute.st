accessing
execute

	self collectAnchorPoints.
	self bundledWire: (EpicBundleWire new addWires: self wires).
	self receiver addBundle: self bundledWire.