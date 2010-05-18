private
atEnd
	^self expect: [ value atEnd ]
  		describeShould: [ 'should be atEnd' ]
  		describeShouldNot: [ 'should not be atEnd' ]
