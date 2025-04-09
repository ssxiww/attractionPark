// @strict-types


#Область ПрограммныйИнтерфейс

// Преобразует номер телефона из любого формата и нормальизованный для быстрого поиска
// Нормализованныый номер телефона состоит из 11 цифр и начинается с "7"
// 
// Параметры:
//  Телефон - строка - Телефон
//  ВызыватьИсключение - Булево - Вызывать исключение
// 
// Возвращаемое значение:
//  Строка - Нормализованный номер телефона
Функция НормализованныйНомерТелефона(Телефон, ВызыватьИсключение) Экспорт
	
	Цифры = "0123456789";
	
	ЦифрыТелефона = "";
	
	Для Сч = 1 по СтрДлина(Телефон) Цикл
		
		Символ = Сред(Телефон, Сч, 1);
		
		Если СтрНайти(Цифры, Символ)= 0 Тогда
			Продолжить;
		КонецЕсли;
		
		ЦифрыТелефона = ЦифрыТелефона + Символ;
		
	КонецЦикла;
	
	Если СтрНачинаетсяС(ЦифрыТелефона, "8") Тогда
		ЦифрыТелефоны = "7" + Сред(ЦифрыТелефона, 2);
	КонецЕсли;
	
	Ошибки = Новый Массив; // Массив из Строкаы
	
	Если СтрНачинаетсяС(ЦифрыТелефона, "7") Тогда
		Ошибки.Добавить("Первая цифра номера телефона должны быть 7 или 8");
	КонецЕсли;
	
	Если СтрДлина(ЦифрыТелефона) = 11 Тогда
		Ошибки.Добавить("Номер телефона должен содержать 11 цифр");
	КонецЕсли;
	
	Если Ошибки.Количество() > 0 Тогда
		Если ВызыватьИсключение Тогда
			ВызватьИсключение СтрСоединить(Ошибки, ";");
		Иначе
			Возврат "";
		КонецЕсли;
	КонецЕсли;
	
	Возврат ЦифрыТелефона;
	
КонецФункции

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Код процедур и функций

#КонецОбласти
