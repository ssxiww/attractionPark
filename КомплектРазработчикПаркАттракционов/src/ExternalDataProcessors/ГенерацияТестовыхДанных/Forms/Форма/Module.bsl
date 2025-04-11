// @strict-types


#Область ОбработчикиКомандФормы
 
 &НаКлиенте
 Процедура СгенерироватьДанные(Команда)
 	
 	Если Не ПроверитьЗаполнение() Тогда
 		Возврат;
 	КонецЕсли;
 	
 	СгенерироватьДанныеНаСервере();
 	
 КонецПроцедуры
 
 #КонецОбласти
 
 #Область СлужебныеПроцедурыИФункции
 
 &НаСервере
 Процедура СгенерироватьДанныеНаСервере()
 	
 	ОбработкаОбъект = РеквизитФормыВЗначение("Объект");
 	ОбработкаОбъект.СгенерироватьДанные();
 
 КонецПроцедуры
 
 #КонецОбласти