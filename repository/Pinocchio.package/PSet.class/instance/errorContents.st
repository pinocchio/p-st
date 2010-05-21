error handling
errorContents
	| bucket |
	1 to: buckets size do: [ :index | 
		bucket := buckets at: index.
		bucket ifNotNil:
			[ self warn: '    bucket: ' , index asString.
			1 to: bucket size by: 2 do: [ :i | 
				(bucket at: i)
					ifNotNil: [ self warn: '        ', i asString , ': ' , (bucket at: i) asString,  ' = ', (bucket at: i + 1) asString ] ] ] ]