accessing
astSelectors 
	self halt.
	^ (OrderedCollection newFrom: self superclass astSelectors) 
		add: #name