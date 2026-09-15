( deftemplate person
	(multislot name)
	(slot age (type INTEGER))
	(slot weight (type FLOAT) (range 40.0 150.0))
)

(deffacts people 
	(person (name John Smith) (age 33) (weight 76.4))
	(person (name James Good) (age 23) (weight 66.2))
	(person (name Mickael Jordan) (age 53) (weight 96.8))
)