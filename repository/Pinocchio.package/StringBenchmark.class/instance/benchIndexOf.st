as yet unclassified
benchIndexOf
	| a b |
	a := '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.
	1000 timesRepeat:[ a do: [ :char| a indexOf: char ]].
	1000 timesRepeat: [ a indexOf: ' '].