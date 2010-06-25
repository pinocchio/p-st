accessing
keywords: anObject
	" TODO use streams or don't use this format '"
	self selector: (anObject inject: '' into: [ :string :each | string , each , ':' ]) asSymbol