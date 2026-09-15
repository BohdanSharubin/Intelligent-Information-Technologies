( deftemplate person
	(slot name)
	(slot age)
	(slot weight)
)

(deffacts people 
	(person (name "John") (age 33) (weight 76))
	(person (name "James") (age 23) (weight 66))
	(person (name "Jordan") (age 53) (weight 96))
)