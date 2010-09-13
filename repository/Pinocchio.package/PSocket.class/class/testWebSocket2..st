as yet unclassified
testWebSocket2: aPort

	| sock  |
	sock := self new.
	sock primListenOn: aPort. 
	[ 2>1 ] whileTrue: [
		| conn |
		conn := sock accept.
		[
			
			| stream web |
	
			self warn: conn remotePort.
			self warn: conn remoteAddress.
		
			stream := PSocketStream on: conn.
			web := PWebSocket on: stream .
			
			web onMessage: [ :data :type :ws | 
				( data size > 0 and: [ data size > 50  ] )
				ifTrue:  [ 
					web close 
				]
				ifFalse: [
					self warn: ('Received ', data , ', handle=', conn hash ).
					self warn: ( 'Received ', data size, ' bytes' , ', handle=', conn hash ).
					web send: ( 'Received ', data size, ' bytes' ).
				].	
			].	
			
			web onError: [ :error :ws | 
				self warn: 'Error: Network Connection closed'.
				conn destroy.
				self warn: ('Connected: ', conn isConnected ). ].
			
			web onClose: [ :ws | 
				self warn:  ('Will now try to close connection').
				conn closeAndDestroy: 0.
				self warn: ('Connected: ', conn isConnected ). ].	
				
			web run.
			 
			
							
		] fork.
	].
