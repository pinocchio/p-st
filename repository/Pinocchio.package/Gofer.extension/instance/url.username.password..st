*Pinocchio
url: anUrlString username: aUsernameString password: aPasswordString
	"Add anUrlString as a repository for the following package operations."

	| repository |
	repository := (anUrlString beginsWith: 'ftp://')
		ifTrue: [
			(Smalltalk 
				at: #MCFtpRepository 
				ifAbsent: [ self error: anUrlString printString , ' is an unsupported repository type' ])
					host:  ((anUrlString allButFirst: 6) copyUpTo: $/)
					directory: ((anUrlString allButFirst: 6) copyAfter: $/)
					user: aUsernameString
					password: aPasswordString 
		]
		ifFalse: [ 
			(anUrlString beginsWith: 'file://') 
				ifTrue: [
					MCCacheRepository default

				]
				ifFalse: [
					MCHttpRepository
						location: anUrlString
						user: aUsernameString
						password: aPasswordString
				].
	].
	self repository: repository