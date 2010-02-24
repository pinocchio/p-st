test-basics
testEquals
	$C should = $C.
	$C should = 'C' asCharacter.
	$C should = ('C' at: 1).
	
	$C should not = 'C'.
	$C should not = #C.