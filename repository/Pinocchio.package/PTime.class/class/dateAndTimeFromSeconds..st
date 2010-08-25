as yet unclassified
dateAndTimeFromSeconds: secondCount
 
 	^ Array
 		with: (PDate fromSeconds: secondCount)
 		with: (PTime fromSeconds: secondCount \\ 86400)
 