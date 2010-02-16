iteration
do: aBlockClosure 
	"Refer to the comment in Collection>>do:."
	1 to: self size do: [:index | 
		aBlockClosure value: (self at: index)
	]