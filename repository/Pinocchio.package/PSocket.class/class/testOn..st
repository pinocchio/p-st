as yet unclassified
testOn: aPort

	| sock conn data |
	sock := self new.
	sock primInit primListenOn: aPort.
	conn := sock accept.
	data := conn receive.
	self warn: ('* read from ', data).
	self warn: ( 'Received ', data size, ' bytes').
	conn write: ( 'Received ', data size, ' bytes').
	conn primClose.
	sock primClose.
