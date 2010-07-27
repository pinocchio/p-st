printing
printOn: stream
	stream << '#' << selector << ' (' << self size asString << ')' 