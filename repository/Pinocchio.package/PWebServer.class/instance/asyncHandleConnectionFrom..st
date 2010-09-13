handling
asyncHandleConnectionFrom: aSocket
	| handlerProcess |
	handlerProcess := [[
		[self handleConnectionFrom: aSocket] on: PError do:[:ex| aSocket destroy].
		mutex critical:[connections remove: PThread current ifAbsent:[]].
	] ensure:[aSocket destroy]] fork.

	mutex critical:[connections add: handlerProcess].

	"handlerProcess resume."
