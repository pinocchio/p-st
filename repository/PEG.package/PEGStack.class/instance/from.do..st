as yet unclassified
from: index do: block
	index + 1 to: lastIndex do: [ :i | block value: (array at: i) ]