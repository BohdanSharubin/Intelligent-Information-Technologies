(defrule day-of-week
	(Today is ?day)
 =>
	(printout t "Today is " ?day crlf)
)