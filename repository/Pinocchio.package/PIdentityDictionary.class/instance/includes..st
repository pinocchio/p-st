private
includes: anObject
	^ self anySatisfy: [ :value | value == anObject ]