cfile
include: file
	stream
		<< '#include <'
		<< file asString
		<< '>'; lf.