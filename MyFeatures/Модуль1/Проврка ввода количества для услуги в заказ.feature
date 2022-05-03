﻿#language: ru

@tree

Функционал: Проверка ввода количества для услуги в заказ

Как Менеджер я хочу
проверить возможность ввода количества для номенклатуры с типом Услуга

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка ввода количества для услуги в заказ

*Закрытие окон
	И я закрываю все окна клиентского приложения
*Создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
*Заполнение шапки
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Попов Б.В. ИЧП '
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
*Заполнение табличной части	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Доставка'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
*Изменение количества
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10,00'
	И в таблице "Товары" я завершаю редактирование строки
*Запись и проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ * от *' в течение 20 секунд
