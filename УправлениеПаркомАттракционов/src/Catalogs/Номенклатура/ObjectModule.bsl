
#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОписаниеПеременных

#КонецОбласти

#Область ПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиСобытий
Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)
	Если ВидНоменклатуры <> Перечисления.ВидНоменклатуры.ПосещениеАттракционов Тогда
		НомерУдаленного = ПроверяемыеРеквизиты.Найти("КоличествоПосещений");
		Если НомерУдаленного <> Неопределено Тогда
			ПроверяемыеРеквизиты.Удалить(НомерУдаленного);
		КонецЕсли;
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти
#Область СлужебныйПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Код процедур и функций

#КонецОбласти

#Область Инициализация

#КонецОбласти

#КонецЕсли
