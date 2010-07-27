initialization
initialize
	super initialize.
	ids := PIdentityDictionary new.
	uidCounter := 0.
	knownSymbolNames := #((+ '_plus_') (- '_minus_') (* '_times_') (% '_modulo_') (\\ '_modulo_') (<< '_shiftLeft_') (>> '_shiftRight_') (< '_lt_') (> '_gt_') (!= '_notEquals_') (~= '_notEquals_') (!= '_notPEquals_') (~~ '_notPEquals_') (== '_pequals_') (= '_equals_') (// '_quotient_') (/ '_divide_') (&& '_logicAnd_') (|| '_logicOr_') (& '_and_') (| '_or_') (, '_append_') (@ '_at_') (#'$' '_dollar_') (#'#' '_hash_')).