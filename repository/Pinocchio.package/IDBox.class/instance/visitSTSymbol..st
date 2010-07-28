visiting
visitSTSymbol: aSymbol
	| replacements uid |
	"Generate a nice symbol name"
	uid := aSymbol asString.
	uid := uid copyReplaceAll: '_' with: '__'.
	uid := uid replaceAll: $: with: $_.
	uid := uid replaceAll: $. with: $-.
	knownSymbolNames do: [ :pair|
		uid := uid copyReplaceAll: pair first with: pair second].
	uid :=  'SMB_', uid asSymbol.
	"fallback for other strange characters, just use the numbered uid from PObject"
	(uid matchesRegex: '.*[^_a-zA-Z0-9].*') ifTrue: [ ^ self rawDefaultIdFor: aSymbol ].
	(uid size > 50) ifTrue: [ ^ self rawDefaultIdFor:  aSymbol ].
	^ uid