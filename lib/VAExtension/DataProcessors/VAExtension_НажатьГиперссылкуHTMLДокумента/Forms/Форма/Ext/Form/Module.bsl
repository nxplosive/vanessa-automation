﻿#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура ВыполнитьКодКлиент(Команда)
	СсылкаНайдена = Ложь;
	
	Окна = ПолучитьОкна();
	Результат = Новый Массив;
	
	Для Каждого ТекОкно Из Окна Цикл
		Если ТекОкно.Заголовок = ЗначениеЗаголовокОкна Тогда
			Если ТекОкно.Содержимое.Количество() > 0 Тогда
				ПолеHTMLДокумента = ТекОкно.Содержимое[0].Элементы[ЗначениеИмяЭлементаФормы];
				НажатьНаГиперссылку(ПолеHTMLДокумента);
				Прервать;
			КонецЕсли;	 
		КонецЕсли;	 
	КонецЦикла;
	
	ВыражениеВычислено = Истина;
	
КонецПроцедуры

&НаКлиенте
Процедура ЗакрытьФорму(Команда)
	Закрыть();
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура НажатьНаГиперссылку(ПолеHTMLДокумента)
	
	Если ТипГиперссылки = 0 Тогда
		//Нажатие гиперссылки по номеру
		ПолеHTMLДокумента.Документ.links[Число(ИмяГиперссылки)].click();
		СсылкаНайдена = Истина;
	Иначе
		//Если ТипГиперссылки = 1  Тогда
		//Нажатие гиперссылки по представлению
		Для Сч = 1 По ПолеHTMLДокумента.Документ.links.length Цикл
			ТекСсылка = ПолеHTMLДокумента.Документ.links[Сч - 1];
			Если ТипГиперссылки = 1 Тогда
				Если Найти(НРег(ТекСсылка.text), НРег(ИмяГиперссылки)) > 0 Тогда
					ТекСсылка.click();
					СсылкаНайдена = Истина;
					Прервать;
				КонецЕсли;
			Иначе	
				Если Найти(НРег(ТекСсылка.href), НРег(ИмяГиперссылки)) > 0 Тогда
					ТекСсылка.click();
					СсылкаНайдена = Истина;
					Прервать;
				КонецЕсли;
			КонецЕсли;	 
		КонецЦикла;	
	КонецЕсли;	 
КонецПроцедуры 

#КонецОбласти