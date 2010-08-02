as yet unclassified
testServer: aPort

	| sock data |
	sock := self new.
	sock primInit primListenOn: aPort. 
	[ 2>1 ] whileTrue: [
		| conn |
		conn := sock accept.
		[
			data := conn receive.
			
			[data first = $! ] whileFalse: [
				self warn: ('Received ', data , ', handle=', conn hash ).
				self warn: ( 'Received ', data size, ' bytes' , ', handle=', conn hash ).
				conn write: ( 'Received ', data size, ' bytes' ).
				data := conn receive.
			].
		
			self warn:  ('Will now close connection, handle=', conn hash ).
			conn primClose.
			
		] fork.
	].
	sock primClose.