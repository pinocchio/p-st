running
assureLastIsReturningSelf: aBlock 
	| return |
	return := aBlock last.
	return class should = PSelf