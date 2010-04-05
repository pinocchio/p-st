as yet unclassified
testEcho
	p command: 'echo A'.
	
	p open.
	p isOpened should = true.
	p isClosed should = false.
	p out isNil should = false.
	p in isNil should = true.
	
	p out read should = 'A'.
	
	p close.
	p isOpened should = false.
	p isClosed should = true.