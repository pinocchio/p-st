exporting
createSelectorFor: aString
	| selector |
	selector := aString asString replaceAll: $: with: $_.
	selectorList add: selector.
	^ selector.