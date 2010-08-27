visitor
visitSTFloat: aFloat
	stream << 'Float ' << (self idFor:  aFloat) 
			<< ' = new_Float('<< aFloat asString << ');'; lf.