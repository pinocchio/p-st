visiting
rawSymbolIdFor: aSymbol
	| uid |
	"Generate a nice symbol name"
	uid := aSymbol asString.
	uid := uid copyReplaceAll: '_' with: '__'.
	uid := uid replaceAll: $: with: $_.
	uid := uid replaceAll: $. with: $-.
	knownSymbolNames do: [ :pair|
		uid := uid copyReplaceAll: pair first with: pair second].
	"fallback for other strange characters, just use the numbered uid from PObject"
	(uidRegex matches: uid) ifTrue: [ ^ self rawDefaultIdFor: aSymbol ].
	(uid size > 50) ifTrue: [ ^ self rawDefaultIdFor:  aSymbol ].
	^ uid