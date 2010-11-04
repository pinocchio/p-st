benchmarking
benchLongMethod
	| string |
	string := PEGStringScanner on: 'buildMorphicNotifierLabelled: label message: messageString
	| notifyPane window extentToUse row|
	self expandStack.
	window := (Object labelled: label) model: self.
	extentToUse := 450 @ 156. "nice and wide to show plenty of the error msg"
	window
		addMorph: (row := self buttonRowForPreDebugWindow: window)
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0) offsets: (0@0 corner: 0@row minExtent y)).
	row color: Object transparent.
	messageString notNil
		ifFalse:
			[notifyPane := Object on: self list: #contextStackList
				selected: #contextStackIndex changeSelected: #debugAt:
				menu: nil keystroke: nil]
		ifTrue:
			[notifyPane := Object on: self text: nil accept: nil
				readSelection: nil menu: #debugProceedMenu:.
			notifyPane editString: (self preDebugNotifierContentsFrom: messageString);
				askBeforeDiscardingEdits: false].
	window
		addMorph: notifyPane
		fullFrame: (Object fractions: (0@0 corner: 1@1) offsets: (0@24 corner: 0@0)).
	window setBalloonTextForCloseBox.
	window openInWorldExtent: extentToUse.
	window currentWorld displayWorld. "helps with interrupt not working somehow."
	^window'.
	200 timesRepeat: [ methodParser parse: string ].