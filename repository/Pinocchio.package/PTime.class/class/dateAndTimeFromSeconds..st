smalltalk-80
dateAndTimeFromSeconds: secondCount
 
 	^ Array
 		with: (PDate fromSeconds: secondCount)
 		with: (PTime fromSeconds: secondCount \\ 86400)
 