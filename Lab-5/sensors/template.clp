(deftemplate sensor
	(slot number (type INTEGER) (range 0 ?VARIABLE))
	(slot status (allowed-values good bad))
)

(defrule check-status
	
=>
	(bind ?count (find-all-facts ((?i sensor)) (eq ?i:status bad ) ))
	(bind ?len (length$ ?count))
	(if(>= ?len 3)
		then
			(printout t "There is a problem, cause " ?len " sensors aren't working well!" crlf)
	)
)