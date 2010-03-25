error handling
errorContents
	| bucket |
	1 to: buckets size do:
			[ :index | 
			bucket := buckets at: index.
			bucket
				ifNotNil:
					[ (PFile stderr)
						writeAll: '    bucket: ' , index asString;
						lf.
					1 to: bucket size by: 2 do:
							[ :i | 
							(bucket at: i)
								ifNotNil:
									[ (PFile stderr)
										writeAll: '        ';
										writeAll: i asString , ': ' , (bucket at: i) asString;
										writeAll: ' = ';
										writeAll: (bucket at: i + 1) asString;
										lf ] ] ] ]