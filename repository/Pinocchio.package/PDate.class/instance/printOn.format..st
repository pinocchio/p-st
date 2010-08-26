printing
printOn: aStream format: formatArray 
	"Print a description of the receiver on aStream using the format 
	denoted the argument, formatArray: 
	
		#(item item item sep monthfmt yearfmt twoDigits) 
	
		items: 1=day 2=month 3=year will appear in the order given, 
	
		separated by sep which is eaither an ascii code or character. 
	
		monthFmt: 1=09 2=Sep 3=September 
	
		yearFmt: 1=1996 2=96 
	
		digits: (missing or)1=9 2=09. 
	
	See the examples in printOn: and mmddyy"
	| gregorian twoDigits element monthFormat |
	gregorian := self dayMonthYearDo: [ :d :m :y | Array with: d with: m with: y ].
	twoDigits := formatArray size > 6 and: [(formatArray at: 7) > 1].
	1 to: 3 do: 
		[ :i | 
			element := formatArray at: i.
			element = 1
				ifTrue: [
					twoDigits ifTrue: [gregorian first < 10 ifTrue: [aStream << $0].
					gregorian first printOn: aStream]
				ifFalse: [gregorian first printOn: aStream]].
			element = 2
				ifTrue: [monthFormat := formatArray at: 5.
					monthFormat = 1
						ifTrue: [
							twoDigits ifTrue: [gregorian middle < 10 ifTrue: [aStream << $0].
							gregorian middle printOn: aStream]
						ifFalse: [gregorian middle printOn: aStream]].
					monthFormat = 2
						ifTrue: [((PMonth nameOfMonth: gregorian middle)
							copyFrom: 1 to: 3) printOn: aStream ].
					monthFormat = 3
						ifTrue: [(PMonth nameOfMonth: gregorian middle) printOn: aStream]].
			element = 3
				ifTrue: [(formatArray at: 6) = 1
						ifTrue: [gregorian last printOn: aStream]
						ifFalse: [
							gregorian last < 10 ifTrue: [aStream << $0].
							(gregorian last \\ 100) printOn: aStream]].
			i < 3
				ifTrue: [(formatArray at: 4) ~= 0
					ifTrue: [aStream << (formatArray at: 4) asCharacter]]]