indenting
updateIndentionString
	| stream |
	stream := WriteStream on: ''. 
	indent timesRepeat: [ stream << '    ']. 
	indentionString := stream contents.