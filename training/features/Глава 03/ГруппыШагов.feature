﻿# language: ru

@lessons

Функционал: Интерактивная справка. Как устроены шаги сценариев? Группы шагов.

Сценарий: Как устроены шаги сценариев? Группы шагов.

	* Привет! В этом уроке я расскажу тебе про то, как работать с группами шагов. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* И загр^узим тестовый пример.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерГруппыШагов.feature"

	* Группы шагов используются чтобы сгруппировать шаги сценария в логически связанные блоки.

	* Первый момент. Чтобы механизм групп работал надо, чтобы выполнялось хотя бы одно из двух условий.
	* Первое условие такое. В секции тегов должен быть написан специальный тэг, которой сообщает парсеру фич, что в данной фиче шаги могут быть сгруппированы.
	* Вот этот тег.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "@tree" 'Служебный тэг @tree'

	* Второе условие такое. В настройках Vanessa Automation установлен флаг тэг три включен по умолчанию.
	* Этот флаг находится тут
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента формы VA по имени "ТегTreeВключенПоУмолчанию" "Тэг @tree включен по умолчанию"
		
	* Рекомендуется оставить данный флаг установленным. Тогда можно не указывать в каждом фича файле служебный тег.
	* Если ни одно из условий не выполняется, то каждая строка сценария будет считаться обычным шагом.

	* Второй момент.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускТестов' UI Automation	
	* Строго говоря любая строка сценария может стать группой шагов потому что группы задаются отступами.
	* Вот пример когда объявлена группа шагов.
		И я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "* Группа шагов 1." 'Объявлена группа шагов'
	* При этом внутри группы есть шаг или шаги, отступы у которых больше чем у строк^и группы.
	* Вот шаг, который принадлежит этой группе.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 10 "Дано Шаг внутри группы первого уровня" 'Шаг внутри группы шагов'
	* Эти шаги тоже принадлежат этой группе.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 16 строку 'Шаги внутри группы' подсценарий

	* Имя группы лучше начинать с символа звездочки. Хотя это необязательно.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "*" 'Символ начала группы'
	* Также группы шагов в редакторе сценария выделяются жирным цветом и специальной пиктограммой слева.

	* Третий момент. В группе шагов могут быть другие группы шагов. Ограничений на количество уровней вложенности нет.
	* Вот пример вложенной группы.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 12 "* Группа шагов 2." 'Вложенная группа шагов'

	* Четвертый момент. Сама строка сценария, которая является группой шагов не будет выполняться во время выполнения сценария.
	* Поэтому надо внимательно следить за отступами в тексте сценария.
	* Иначе случайно можно обычный шаг сделать группой и он перестанет выполняться.

	* И последний момент. В качестве отступов можно использовать либо символы табул^яции, либо пробелы.
	* Рекомендуется использовать символы табов.
	* Причём внутри одного фича файла нельзя смешивать отступы и использовать для них и пробелы и символы табов одновременно.
	
	* На этом всё, переходи к следующему уроку интерактивной справки.


