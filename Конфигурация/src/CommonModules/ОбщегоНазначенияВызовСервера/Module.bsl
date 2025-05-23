// @strict-types


#Область ПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Преобразовать таблицу значений в массив структур.
// 
// Параметры:
//  ВТЗ - ТаблицаЗначений
// 
// Возвращаемое значение:
//  Массив:
//  	* Структура - Структура
//  		
//  
//
Функция ПреобразоватьТаблицуЗначенийВМассив(ВТЗ) Экспорт
	
	МассивЗаписей = Новый Массив();
	СтруктураСтрокой = "";
	НужнаЗапятая = Ложь;
	Для Каждого Колонка Из ВТЗ.Колонки Цикл
		Если НужнаЗапятая Тогда
			СтруктураСтрокой = СтруктураСтрокой + ",";
		КонецЕсли;
		СтруктураСтрокой = СтруктураСтрокой + Колонка.Имя;
		НужнаЗапятая = Истина;
	КонецЦикла;
	Для Каждого Строка Из ВТЗ Цикл
		НоваяСтрока = Новый Структура(СтруктураСтрокой);
		ЗаполнитьЗначенияСвойств(НоваяСтрока, Строка);
		МассивЗаписей.Добавить(НоваяСтрока);
	КонецЦикла;
	Возврат МассивЗаписей;
КонецФункции

#КонецОбласти
