// @strict-types


#Область ОписаниеПеременных

#КонецОбласти

#Область ОбработчикиСобытийФормы

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиКомандФормы
&НаКлиенте
Процедура Переход_1_0_0_2(Команда)
	Переход_1_0_0_2НаСервере();
КонецПроцедуры
#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервереБезКонтекста
Процедура Переход_1_0_0_2НаСервере()
	
	Документы.ПродажаБилета.ПеренестиНоменклатуруВТабличнуюЧасть();
КонецПроцедуры

#КонецОбласти
