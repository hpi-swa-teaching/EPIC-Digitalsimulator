component testing
testThemeDrawing

	self iterateThemesFor: EpicAnd new.
	self iterateThemesFor: EpicEqual new.
	self iterateThemesFor: EpicNand new..
	self iterateThemesFor: EpicNor new.
	self iterateThemesFor: EpicNot new.
	self iterateThemesFor: EpicOr new.
	self iterateThemesFor: EpicDemux new.
	"self iterateThemesFor: EpicMux new."
	self iterateThemesFor: EpicXnor new.
	self iterateThemesFor: EpicXor new.
	self iterateThemesFor: EpicDFlipFlop new.
	self iterateThemesFor: EpicTFlipFlop new.
	self iterateThemesFor: EpicRSFlipFlop new