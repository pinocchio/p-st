visitor
preprocessThreadedArray: anArray
	anArray withIndexDo: [ :el :index|
			anArray at: index put: el asPObject.].
	^ anArray