printing
printOn: stream
	stream << '[' << start asCharacter asString << '-' << stop asCharacter asString << ']'