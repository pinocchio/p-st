as yet unclassified
testWebSocket: aPort

	| sock  |
	sock := self new.
	sock primListenOn: aPort. 
	[ 2>1 ] whileTrue: [
		| conn |
		conn := sock accept.
		[
			
			| stream web data |
	
			self warn: conn remotePort.
			self warn: conn remoteAddress.
		
			stream := PSocketStream on: conn.
			web := PWebSocket on: stream .
				
			[
				data := web readMessage .
				
				[ data size > 0 and: [ data first = $! ] ] whileFalse: [
					self warn: ('Received ', data , ', handle=', conn hash ).
					self warn: ( 'Received ', data size, ' bytes' , ', handle=', conn hash ).
					web send: ( 'Received ', data size, ' bytes' ).
					data := web readMessage .
				].
			] 
			on: ConnectionClosed 
			do: [ :error | self warn: 'Error: Network Connection closed'. self warn: ('Status: ', conn isConnected ). ].
			
			self warn:  ('Will now close connection, handle=', conn hash ).
			conn closeAndDestroy: 0.
			self warn: ('Status ', conn isConnected ).
							
		] fork.
	].
