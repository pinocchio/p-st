visitor
preprocessThreadedArray: anArray
	SuperInstructor instance analize: anArray.
	anArray withIndexDo: [ :el :index|
			anArray at: index put: el asPObject.].
	^ anArray