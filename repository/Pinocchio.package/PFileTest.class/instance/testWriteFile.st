tests
testWriteFile
	| out |
	self preventRun: [ ^ self].
	out := PWriteFile open: '/tmp/pinocchio_outtest.p'.
	out << 'echo: anObject'; lf;
		<< '    ^ anObject'; close.
	