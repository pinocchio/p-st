as yet unclassified
sieve: limit
	| sieve count prime |
	sieve := Array new: limit+1.
	count := 0.
	prime := 0.
	1 to: limit do: [ :i|
		(sieve at: i) ifNil: [
			prime := 2*i + 3.
			i+prime to: limit by: prime do: [:k|
				sieve at: k put: false].
			count := count + 1.]].
	^ sieve
	