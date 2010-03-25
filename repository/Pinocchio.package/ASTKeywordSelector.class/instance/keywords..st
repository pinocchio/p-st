accessing
keywords: anObject
	self selector: (anObject inject: '' into: [ :string :each | string , each , ':' ]) asSymbol