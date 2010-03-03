error handling
error: msg
	PFile stderr write: 33 asCharacter; << '[31m'; writeAll: msg; write: 33 asCharacter; << '[0m'; lf.
	self halt.