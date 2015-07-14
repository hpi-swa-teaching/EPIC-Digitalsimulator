initialization
initializeKeys
	self zeroKey: (EpicHexKey putAt: (10@10) with: '0' and: 0).
	self oneKey: (EpicHexKey putAt: (30@10) with: '1' and: 1).
	self twoKey: (EpicHexKey putAt: (50@10) with: '2' and: 2).
	self threeKey: (EpicHexKey putAt: (70@10) with: '3' and: 3).
	self fourKey: (EpicHexKey putAt: (10@30) with: '4' and: 4).
	self fiveKey: (EpicHexKey putAt: (30@30) with: '5' and: 5).
	self sixKey: (EpicHexKey putAt: (50@30) with: '6' and: 6).
	self sevenKey: (EpicHexKey putAt: (70@30) with: '7' and: 7).
	self eightKey: (EpicHexKey putAt: (10@50) with: '8' and: 8).
	self nineKey: (EpicHexKey putAt: (30@50) with: '9' and: 9).
	self AKey: (EpicHexKey putAt: (50@50) with: 'A' and: 10).
	self BKey: (EpicHexKey putAt: (70@50) with: 'B' and: 11).
	self CKey: (EpicHexKey putAt: (10@70) with: 'C' and: 12).
	self DKey: (EpicHexKey putAt: (30@70) with: 'D' and: 13).
	self EKey: (EpicHexKey putAt: (50@70) with: 'E' and: 14).
	self FKey: (EpicHexKey putAt: (70@70) with: 'F' and: 15).