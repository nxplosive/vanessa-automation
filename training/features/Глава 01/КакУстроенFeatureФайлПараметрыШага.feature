﻿# language: ru



Функционал: Интерактивная справка. Как устроен feature файл? Параметры шагов.

Сценарий: Как устроен feature файл? Параметры шагов.

	* Привет! В этом уроке я расскажу тебе про то, как устроены шаги сценариев. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* И загр^узим тестовый пример.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Глава 01\Пример\ПримерКакУстроенFeatureФайлКлючевыеСлова.feature"

	* Каждый шаг сценария должен начинаться с какого-то ключевого сл^ова.
	* Этот шаг, начинается с ключевого сл^ова Дано.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Дано" 'Ключевое слово "Дано"'
		И Пауза 4

	* А этот шаг, начинается с ключевого сл^ова Когда.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "Когда" 'Ключевое слово "Когда"'
	
	* Ключевые слова шагов в редакторе обычно выделяют синим цветом.
	* Ключевое слово не несёт в себе смысловой нагрузки. Если в шаге поменять одно ключевое слово на другое, то шаг будет выполнять ровно те же действия, что и до этого.

	* Ключевые слова могут содержать пробелы, например как в этом шаге.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения "К тому же" 'Ключевое слово "К тому же"'

	* Полный список ключевых слов для всех языков, включая русский, можно получить по этой ссылке.
		И я делаю подсветку текста в редакторе VA в режиме обучения с 19 по 19 строку "Полный список ключевых слов на всех языках."

	* На этом всё, переходи к следующему уроку интерактивной справки.