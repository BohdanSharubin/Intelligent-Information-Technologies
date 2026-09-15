(defrule find-by-name
   (person (name James $?rest) (age ?age))
=>
   (printout t "Знайдено James " (implode$ $?rest) " з віком: " ?age crlf)
)

(defrule find-older-than-30
   (person (name $?name) (age ?age&:(> ?age 30)))
=>
   (printout t "Людина старше 30 років: " (implode$ ?name) ", вік: " ?age crlf)
)