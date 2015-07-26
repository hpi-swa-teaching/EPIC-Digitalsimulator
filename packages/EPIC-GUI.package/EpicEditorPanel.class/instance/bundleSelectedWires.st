combining
bundleSelectedWires

	self selectedWires ifNotEmpty: [
		(self isUnbundledWireList: self selectedWires) ifTrue: [
			self createNewBundle].

		(self isBundleWithWires: self selectedWires) ifTrue:[
			self addWiresToBundle]]