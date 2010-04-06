aliasing
aliasChildrenFrom: anObject to: anotherObject in: aContext
	super aliasChildrenFrom: anObject to: anotherObject in: aContext.
	" For now don't alias at:put: values ... '"
	1 to: anObject size do: [ :index | anotherObject at: index put: (anObject at: index) ].