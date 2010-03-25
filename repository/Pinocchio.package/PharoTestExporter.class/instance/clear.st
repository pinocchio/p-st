exporting
clear
	self outStream: (WriteStream on: (String new: 1000000)).
	parser := scparser method.
	selectorList := PSet new.
	cdumper clear.
	exporter := PharoExporter new