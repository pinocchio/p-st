private
repaint
	| col line |
	self parsesUntil ifNotNil: [ :newpos |
		col := text column.
		line := text line.
		failure ifNotNil: [
			failure = (newpos + 1)
				ifFalse: [ self repaintAt: failure ]].
		
		failure := newpos + 1.
		output errorColor.
		self repaintAt: failure.
		self moveToLine: line column: col.
		^ output normal ].
	
	failure ifNotNil: [
		col := text column.
		line := text line.
		self repaintAt: failure.
		self moveToLine: line column: col ].
	
	failure := nil