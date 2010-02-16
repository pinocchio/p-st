extracting
extract
	| clsReference |
	progress := 0.
	self exportBasicClasses.
	[ todo isEmpty ] whileFalse: [
		clsReference := self transformNext.
	].

	(pinocchioVisitor rootScope decls anySatisfy: [ :each | 
		each pclass isNil 
	]) should be false.

	(done select: [ :each | 
		(each package at: each name) pclass isNil 
	]) isEmpty should be true.
	
	^ self root.