*Pinocchio
getCCommentEscapedSource
	| source |
	source := self getSource asString asString.
	source := source copyReplaceAll: String cr with: (String cr, '// ') asTokens: false.
	source := source copyReplaceAll: Character enter asString with: (String cr, '// ')  asTokens: false.
	^ source