enumerating
do: block
	mark + 1 to: position do: [ :i | block value: (array at: i) ]