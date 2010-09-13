fields
postFields
	"Answers the multipart fields of a post request"

	^(self isPostRequest and: [
		self contentType = 'application/x-www-form-urlencoded'])
			ifTrue: [PWebUtils decodeUrlEncodedForm: self content multipleValues: true]
			ifFalse: [Dictionary new]