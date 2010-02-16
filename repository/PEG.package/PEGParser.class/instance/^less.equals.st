adding
<= theExpression
	expression := theExpression asPEG.
	name ifNotNil: [ expression name: name ]