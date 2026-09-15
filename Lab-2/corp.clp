(deftemplate user
	(slot name (type SYMBOL))
	(slot role (type SYMBOL))
	(slot department (type SYMBOL))
	(slot status (type SYMBOL) (allowed-values активний неактивний))
)

(deffacts corporation 
	(user (name Петренко) (role адміністратор) (department IT) (status активний))
	(user (name Ковальчук) (role менеджер) (department Маркетинг) (status неактивний))
	(user (name Іваненко) (role співробітник) (department HR) (status активний))
)