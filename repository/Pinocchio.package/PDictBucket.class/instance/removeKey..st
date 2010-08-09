removing
removeKey: aKey
	^ self removeKey: aKey ifAbsent: [ self keyNotFound: aKey ]