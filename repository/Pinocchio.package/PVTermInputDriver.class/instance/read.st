reading
read
	" C0 Control (Escape) mode "
	| character action |
	character := input read.
	action :=
		normal
			at: character asInteger
			ifAbsent: [ ^ handler write: character ].
	action value