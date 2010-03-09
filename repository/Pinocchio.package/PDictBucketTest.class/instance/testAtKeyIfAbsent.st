tests
testAtKeyIfAbsent

	(b atKey: #bla ifAbsent: [ 1 ]) should = 1. 
	
	b addKey: #key value: 'value'. 
	(b atKey: #bla ifAbsent: [ 1 ]) should = 1. 
	(b atKey: #key ifAbsent: [ 1 ]) should = 'value'. 