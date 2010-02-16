accessing
do: aBlockClosure 
	1 to: self size do: 
		[:index | aBlockClosure value: (self at: index)]