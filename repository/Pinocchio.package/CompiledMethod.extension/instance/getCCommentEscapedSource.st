*Pinocchio
getCCommentEscapedSource
	| source |
	source := self getSource asString asString.
	source := source copyReplaceAll: String cr with: (String lf, '// ') asTokens: false.
	source := source copyReplaceAll: Character enter asString with: (String lf, '// ')  asTokens: false.
	^ source