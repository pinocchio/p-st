as yet unclassified
testSocketStream: aPort

	| sock data |
	sock := self new.
	sock primListenOn: aPort. 
	[ 2>1 ] whileTrue: [
		| conn stream |
		conn := sock accept.
		[
			self value: conn.					
		] fork.
	].
	sock primClose.