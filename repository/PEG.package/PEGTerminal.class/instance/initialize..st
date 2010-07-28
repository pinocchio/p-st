initialization
initialize: aString
	string := aString.
	stringValue := Array new: aString size.
	1 to: aString size do: [ :i | stringValue at: i put: (aString at: i) asInteger ]