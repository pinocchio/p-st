exporting
exportLayout
	| oldStream layoutStream |
	oldStream := stream.
	stream := layoutStream := IndentableWriteStream on: (String new: 200).
	stream << 'void init_' << currentClass name asString << '_layout() {'; indent; lf.
	
	self createClass: currentClass.
	
	stream outdent; lf; << '}'; lf; lf.
	stream := oldStream.
	^ layoutStream