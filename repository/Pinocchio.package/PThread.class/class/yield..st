as yet unclassified
yield: currentThread
	threads addFirst: currentThread.
	self resumeNext.
	^ nil.