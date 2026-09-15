(deftemplate person 
	(slot name (type SYMBOL)) 
	(slot gender (allowed-values male female))
	(slot role (allowed-values father mother son))
)

(deftemplate family-ties 
	(slot father (type SYMBOL))
	(slot mother (type SYMBOL))
	(slot child (type SYMBOL))
	(multislot parents )
)

(deffacts family 
	(person (name John) (gender male) (role son))
	(person (name Tom) (gender male) (role father))
	(person (name Susan) (gender female) (role mother))

	(family-ties (father Tom) (mother Susan) (child John) (parents Tom Susan))
)
