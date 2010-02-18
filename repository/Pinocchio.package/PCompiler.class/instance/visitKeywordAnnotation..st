visitor
visitKeywordAnnotation: anASTKeywordAnnotation 
	^ PAnnotation new
			selector:  (self visit: anASTKeywordAnnotation selector);
			arguments: (self acceptOnCollection: anASTKeywordAnnotation arguments) asArray asPObject.