accessing
upToEnd
	| start |

	start := position+1.
	position := collection size.
	^collection copyFrom: start to: position