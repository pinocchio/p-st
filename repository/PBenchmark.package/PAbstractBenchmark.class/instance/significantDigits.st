accessing
significantDigits
	| variance |
	variance := self confidenceVariance.
	variance = 0 ifTrue: [ ^ 2].
	variance >= 10 ifTrue: [ ^ 0].
	^ 1 - (variance log floor)