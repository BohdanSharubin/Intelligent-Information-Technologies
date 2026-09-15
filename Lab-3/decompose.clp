( defrule print-person
	(person (name ?name) (gender ?gender) (role ?role))
=>
	(printout t ?name " is a " ?gender crlf)
	(printout t ?name " is a " ?role crlf)
)

( defrule print-relations
	(family-ties (child ?child) (father ?father) (mother ?mother) (parents ?parent1 ?parent2))
=>
	(printout t "The father of " ?child " is " ?father crlf)
	(printout t "The mother of " ?child " is " ?mother crlf)
	(printout t "The parents of " ?child " are " ?parent1 " and " ?parent2 crlf)
)