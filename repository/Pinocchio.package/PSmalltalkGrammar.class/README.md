SCParser is a PEG which parses Smalltalk code.

"""
TODO:
 - add tests for rules flagged with XXX
 - complete grammar of expressions
 - replace argument with parameter
"""

Grammar:

methodParser					= messagePattern & temporaries? & annotations? & methodStatments?

BASIC-BLOCK:

temporaries 						= bar & variableName+ & bar
		
XXXsubExpression 					= expression & ('.' omit)
XXXfinalExpression 				= expression & ('.'? omit)
XXXreturn 							= ('^' omit) & finalExpression
XXXstatements 					= subExpression * & (return | finalExpression)?

XXXbraceExpression 				= ('{' omit) & subExpression* & expression & ('}' omit)
XXXscopedExpression 				= ('(' omit) & expression & (')' omit)

EXPRESSION:

primary 							= primaryVariable | literal | block | braceExpression | scopedExpression

expression 						= assignmentExpressions & (cascadedMessageExpression | messageExpression | primary)

cascadedMessageExpression 		= messageExpression & ((';' omit) & (keywordMessageExpression | binaryMessageExpression | unaryMessageExpression))+
messageExpression 				= keywordExpression | binaryExpression | unaryExpression
	
unaryExpression 				= primary & unarySelector+
binaryExpression 				= unaryObjectDescription & binarySelector & binaryObjectDescription

unaryMessageExpression 		= unarySelector
binaryMessageExpression 		= binarySelector & unaryObjectDescription

binaryObjectDescription 			= binaryExpression | unaryObjectDescription
unaryObjectDescription 			= unaryExpression | primary

ASSIGNMENT:

assignmentOp 					= ':=' | '_'
assignmentExpressions 			= (variableName & assignmentOp) times

BLOCK:

blockArguments 				= (':' & identifier) +
XXXblock 						= '[' & (blockArguments & bar) optional & temporaries optional & statements & ']'

SELECTOR:

keyword 						= identifier && (':' omit)
keywordsArguments 			= (keyword & argumentName) +

binarySelector 					= ( ( (specialCharacter | '-') && specialCharacter ** ) | '|' )
binaryArgument 				= binarySelector & argumentName

unarySelector 					= identifier && (':'! omit)
		
messagePattern 					= keywordsArguments | binaryArgument | unarySelector

LITERAL:

specialCharacter 				= '+' | '*' | '/' | '\' | '~' | '<' | '>' | '=' | '@' | '%' | '?' | '!' | '&' | '`' | ','
character 						= ('[' | ']' | '{' | '}' | '(' | ')' | '_' | '^' | ';' | '$' | '#' | ':' | '-' | '|' | '.') | space | decimalDigit | letter | specialCharacter
characterConstant 				= '$' && character

string 							= ( ('''' omit) && (''''!)**  && ('''' omit) )++
stringConstant 					= string
		
symbolKeywords 				= (keyword + ':') ++
symbolString 					= string
symbol 							= symbolKeywords | identifier | binarySelector | string
symbolInArray 					= symbol
symbolConstant 					= ('#' omit) && symbol
		
XXXarray 						= '(' & (number | stringConstant | symbolInArray | symbolConstant | characterConstant | array)*  & ')'
arrayConstant 					= '#' & array

VARIABLE:

identifier 						= letter && (letter | decimalDigit) **
capitalIdentifier 				= uppercase && (letter | decimalDigit) **
argumentName 					= identifier
variableName 					= identifier
primaryVariable 				= identifier

CONVENIENCE:

bar 							= '|'
decimalDigit 					= [0-9]
uppercase 						= [A-Z]
lowercase 						= [a-z]
letter 							= lowercase | uppercase
			
SEPARATOR:

space 							= ' ' | '\t' | '\n' 								"= PEGParser separators "
commentFormat 					= '"' ('"'!) ** '"'
separator 						= (space | commentFormat) **