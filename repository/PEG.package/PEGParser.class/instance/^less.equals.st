adding
<= theExpression
	expression := theExpression asPEG.
	name ifNotNil: [ expression name ifNil: [ expression name: name ] ]