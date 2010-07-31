converting
memo
	semantics ifNil: [ ^ PEGMemo on: expression ].
	^ PEGMemo on: self