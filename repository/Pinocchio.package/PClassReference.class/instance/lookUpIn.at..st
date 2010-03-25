accessing
lookUpIn: aCollection at: index
	index > aCollection size
		ifFalse: [ ^ self error: 'classes are not nested.' ]	"^ self."