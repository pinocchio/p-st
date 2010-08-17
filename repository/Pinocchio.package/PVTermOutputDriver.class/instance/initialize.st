initialization
initialize 
	super initialize.
	termcap := PTermcap instance.
	outStream := PFile stdout. 
	self reset.