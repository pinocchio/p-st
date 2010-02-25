accessing
lookup: aPath
	| package |
	package :=  self findName: aPath first.
	^ package lookUpIn: aPath at: 2.
	