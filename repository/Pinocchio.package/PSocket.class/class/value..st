as yet unclassified
value: conn 

	| stream data |
	
	self warn: conn remotePort.
	self warn: conn remoteAddress.
	
	stream := PSocketStream on: conn.
			
	[
		stream receiveDataIfAvailable.
		data := stream nextAllInBuffer.
				
		[ data size > 0 and: [ data first = $! ] ] whileFalse: [
			self warn: ('Status ', conn isConnected ).
			self warn: ('Received ', data , ', handle=', conn hash ).
			self warn: ( 'Received ', data size, ' bytes' , ', handle=', conn hash ).
			conn write: ( 'Received ', data size, ' bytes' ).
			stream receiveDataIfAvailable.
			data := stream nextAllInBuffer.
		].
	] 
	on: ConnectionClosed 
	do: [ :error | self warn: 'Error: Network Connection closed'. self warn: ('Status: ', conn isConnected ). ].
			
	self warn:  ('Will now close connection, handle=', conn hash ).
	conn closeAndDestroy: 0.
	self warn: ('Status ', conn isConnected ).