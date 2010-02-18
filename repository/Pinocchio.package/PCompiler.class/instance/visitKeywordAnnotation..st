visitor
visitKeywordAnnotation: anASTKeywordAnnotation 
	^ PAnnotation new
			selector:  (self visit: anASTKeywordAnnotation selector);
			keywords: (self acceptOnCollection: anASTKeywordAnnotation keywords) asPArray;
			arguments: (self acceptOnCollection: anASTKeywordAnnotation arguments) asPArray.