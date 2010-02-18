convenience
createBlock: size
	| block |
	block := PBlock new: size.
	block depth: self scope depth - 1.
	block info: self currentInfo.
	^ block