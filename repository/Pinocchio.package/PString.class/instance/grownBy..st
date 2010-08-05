as yet unclassified
grownBy: length
	"Answer a copy of receiver collection with size grown by length"

	| newCollection |
	newCollection := self species new: self size + length.
	newCollection replaceFrom: 1 to: self size with: self startingAt: 1.
	^ newCollection