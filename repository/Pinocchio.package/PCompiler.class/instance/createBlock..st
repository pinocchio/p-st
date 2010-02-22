convenience
createBlock: size
	| block |
	block := PBlock new: size.
	block info: self currentInfo.
	^ block