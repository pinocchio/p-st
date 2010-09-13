handling
asyncHandleConnectionFrom: aSocket
	| handlerProcess |
	handlerProcess := [[
		[self handleConnectionFrom: aSocket] on: Error do:[:ex| aSocket destroy].
		mutex critical:[connections remove: Processor activeProcess ifAbsent:[]].
	] ensure:[aSocket destroy]] newProcess.

	mutex critical:[connections add: handlerProcess].

	handlerProcess resume.
