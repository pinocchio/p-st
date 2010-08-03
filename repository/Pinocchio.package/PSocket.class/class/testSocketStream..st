as yet unclassified
testSocketStream: aPort

	| sock data |
	sock := self new.
	sock primListenOn: aPort. 
	[ 2>1 ] whileTrue: [
		| conn stream |
		conn := sock accept.
		[
			stream := PSocketStream on: conn.
			
			data := stream upTo: $!.
			
			
			self warn: ('Status ', conn isConnected ).
			self warn: ('Received ', data , ', handle=', conn hash ).
			self warn: ( 'Received ', data size, ' bytes' , ', handle=', conn hash ).
			conn write: ( 'Received ', data size, ' bytes' ).
		
			self warn:  ('Will now close connection, handle=', conn hash ).
			conn closeAndDestroy: 0.
			self warn: ('Status ', conn isConnected ).
			
		] fork.
	].
	sock primClose.