*Pinocchio
cEscaped
	| stream size |
	size := self size.
	stream :=  WriteStream on: (String new: size).
	1 to: size do: [ :index | stream nextPutAll: (self at: index) cEscaped ].
	^ stream contents .