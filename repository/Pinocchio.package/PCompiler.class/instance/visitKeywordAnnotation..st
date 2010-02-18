visitor
visitKeywordAnnotation: anASTKeywordAnnotation 
	^ PAnnotation new
			selector:  (self visit: anASTKeywordAnnotation selector);
			keywords: (self acceptOnCollection: anASTKeywordAnnotation keywords) asArray asPObject;
			arguments: (self acceptOnCollection: anASTKeywordAnnotation arguments) asArray asPObject.