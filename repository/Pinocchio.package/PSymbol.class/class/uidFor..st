as yet unclassified
uidFor: aSymbol
	<preventExport>
	| knownNames replacements uid |
	knownNames := #((+ '_plus_') (- '_minus_') (* '_times_') (% '_modulo_') (\\ '_modulo_') (<< '_shiftLeft_') (>> '_shiftRight_') (< '_lt_') (> '_gt_') (!= '_notEquals_') (~= '_notEquals_') (!= '_notPEquals_') (~~ '_notPEquals_') (== '_pequals_') (= '_equals_') (// '_quotient_') (/ '_divide_') (&& '_logicAnd_') (|| '_logicOr_') (& '_and_') (| '_or_') (, '_append_') (@ '_at_') (#'$' '_dollar_') (#'#' '_hash_')).
	"Generate a nice symbol name"
	uid := aSymbol symbol asString.
	uid := uid copyReplaceAll: '_' with: '__'.
	uid := uid copyReplaceAll: ':' with: '_'.
	uid := uid copyReplaceAll: '.' with: '-'.
	knownNames do: [ :pair|
		uid := uid copyReplaceAll: pair first with: pair second].
	uid :=  ('SMB_', uid) asSymbol.
	"fallback for other strange characters, just use the numbered uid from PObject"
	(uid matchesRegex: '.*[^_a-zA-Z0-9].*') ifTrue: [ ^ super uidFor: aSymbol ].
	^ uid