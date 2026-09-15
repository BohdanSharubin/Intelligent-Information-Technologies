( deftemplate star
	(slot name (type SYMBOL))
	(slot class (type SYMBOL))
	(slot size (type INTEGER) (range -7 15))
	(slot distance (type NUMBER) (range 0.0 ?VARIABLE))
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

(deffunction find-stars-by-class (?star-class)
	(printout t "===Search by star class===" crlf )
	
	(do-for-all-facts ((?i star)) (eq ?i:class ?star-class)
		(printout t "Star has name " ?i:name " and class " ?i:class
			" with size " ?i:size " and distance to Earth is " ?i:distance crlf)
	)
)

(deffunction find-stars-by-size (?star-size)
	(printout t "===Search by star size===" crlf )
	(do-for-all-facts ((?i star)) (eq ?i:size ?star-size)
		(printout t "Star has name " ?i:name " and class " ?i:class
			" with size " ?i:size " and distance to Earth is " ?i:distance crlf)
	)
)

(deffunction find-stars-by-class-and-size (?star-class ?star-size)
	(printout t "===Search by star class and size===" crlf )
	(do-for-all-facts ((?i star)) (and (eq ?i:class ?star-class) (eq ?i:size ?star-size))
		(printout t "Star has name " ?i:name " and class " ?i:class
			" with size " ?i:size " and distance to Earth is " ?i:distance crlf)
	)
)

(deffunction find-stars ()
	(printout t "Enter star class(from A to K):" crlf)
	(bind ?star-class (read))
	
	(printout t "Enter star size(from -7 to 15):" crlf)
	(bind ?star-size (read))
	
	(find-stars-by-class ?star-class)
	(find-stars-by-size ?star-size)
	(find-stars-by-class-and-size ?star-class ?star-size)

)