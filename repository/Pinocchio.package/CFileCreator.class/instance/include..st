cfile
include: file
	stream nextPutAll: '#include <';
		nextPutAll: file asString;
		nextPutAll: '>'; cr.