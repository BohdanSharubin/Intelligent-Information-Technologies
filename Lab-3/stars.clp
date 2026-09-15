( deftemplate star
	(slot name (type SYMBOL))
	(slot class (type SYMBOL))
	(slot size (type INTEGER) (range -7 15))
	(slot distance (type NUMBER) (range 0.0 ?VARIABLE))
)

(deftemplate user-data
	(slot star-class (type SYMBOL))
	(slot star-size (type INTEGER) (range -7 15))
)

( deffacts stars-info
	(star (name Сиріус) 	 (class A) (size 1)  (distance 8.8))
	(star (name Канопус) 	 (class F) (size -3) (distance 98))
	(star (name Арктур) 	 (class K) (size 0)  (distance 36))
	(star (name Вега) 		 (class A) (size 1)  (distance 26))
	(star (name Капелла) 	 (class G) (size -1) (distance 46))
	(star (name Рігель)      (class B) (size -7) (distance 880))
	(star (name Проціон)     (class F) (size 3)  (distance 11))
	(star (name Бетельгейзе) (class M) (size -5) (distance 490))
	(star (name Альтаїр)     (class A) (size 2)  (distance 16))
	(star (name Альдебаран)  (class K) (size -1) (distance 68))
	(star (name Спіка)       (class B) (size -3) (distance 300))
	(star (name Антарес)     (class M) (size -4) (distance 250))
	(star (name Поллукс)     (class K) (size 1)  (distance 35))
	(star (name Денеб)       (class A) (size -7) (distance 1630))
)

(defrule enter-answers
	(declare (salience 10))
	(not (user-data))
	(not (done))
=>
	(printout t "Enter star class:" crlf)
	(bind ?star-class (read))
	(printout t "Enter star size:" crlf)
	(bind ?star-size (read))
	(assert (user-data (star-class ?star-class) (star-size ?star-size)))
)

(defrule find-stars-by-class
	(user-data (star-class ?star-class))
	(star (class ?star-class) (name ?name) (size ?size) (distance ?distance))
=>
	(printout t "Star with name " ?name " and class " ?star-class " has size " ?size " and distance to Earth is " ?distance crlf)
)

(defrule find-stars-by-size
	(user-data (star-size ?star-size))
	(star (class ?class) (name ?name) (size ?star-size) (distance ?distance))
=>
	(printout t "Star with name " ?name " and class " ?class " has size " ?star-size " and distance to Earth is " ?distance crlf)
)

(defrule find-stars-by-class-and-size
	(user-data (star-class ?star-class) (star-size ?star-size))
	(star (class ?star-class) (name ?name) (size ?star-size) (distance ?distance))
=>
	(printout t "Star with name " ?name " and class " ?star-class " has size " ?star-size " and distance to Earth is " ?distance crlf)
)

(defrule remove-user-data
	(declare (salience -10))
	?fact <- (user-data)
=>
	(retract ?fact)
	(assert (done))
)