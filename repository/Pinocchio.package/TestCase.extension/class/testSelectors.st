*Pinocchio
testSelectors 
	^ (self selectors asArray select: [ :each |
		(each beginsWith: 'test') and: [ (each includes: $:) not ]]) "sort"