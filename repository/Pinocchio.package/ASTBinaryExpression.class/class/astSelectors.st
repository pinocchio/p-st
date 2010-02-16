accessing
astSelectors 
	^ (OrderedCollection with: #argument with: #receiver) 
		addAll: super astSelectors;
		yourself.