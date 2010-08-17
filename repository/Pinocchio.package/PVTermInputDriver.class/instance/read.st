reading
read
	" C0 Control (Escape) mode "
	| character action |
	character := readline read.
	action :=
		normal
			at: character asInteger
			ifAbsent: [ ^ readline write: character ].
	action value