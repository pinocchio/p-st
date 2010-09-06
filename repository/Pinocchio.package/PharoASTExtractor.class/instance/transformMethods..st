extracting
transformMethods: stMethods
	| methodDict methods astMethod |
	methodDict := PMethodDictionary new.
	stMethods do: [ :method | 
			astMethod := self transformMethod: method getSource.
			methodDict at: (pcompiler selectorFor: astMethod was: method selector) 
						put: astMethod ].
	^ methodDict