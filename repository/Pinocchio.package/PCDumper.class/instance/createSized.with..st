convenience
createSized: arrayedObject with: aString
	self put: arrayedObject with: [ :s| 
			self putStringOrBlock: aString.
			s << ', '  << arrayedObject size asString.
			arrayedObject do: [ :each |
				s << ', ' << (self idFor: each) ].
			 s << $). ].