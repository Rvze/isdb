<h1>Лабораторная работа #3</h1>
<h2>Составить запросы на языке SQL (пункты 1-7).</h2>

<h3>1. Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:</h3>
<div>Н_ТИПЫ_ВЕДОМОСТЕЙ, Н_ВЕДОМОСТИ.

Вывести атрибуты: Н_ТИПЫ_ВЕДОМОСТЕЙ.ИД, Н_ВЕДОМОСТИ.ИД.
Фильтры (AND):
  1. Н_ТИПЫ_ВЕДОМОСТЕЙ.ИД < 1.
  2. Н_ВЕДОМОСТИ.ЧЛВК_ИД = 142390.
  3. Н_ВЕДОМОСТИ.ЧЛВК_ИД = 105590.

Вид соединения: INNER JOIN.
                               </div>
  
<h3>2.Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:</h3>
  <div>Таблицы: Н_ЛЮДИ, Н_ВЕДОМОСТИ, Н_СЕССИЯ.
    
Вывести атрибуты: Н_ЛЮДИ.ИМЯ, Н_ВЕДОМОСТИ.ЧЛВК_ИД, Н_СЕССИЯ.ЧЛВК_ИД.
Фильтры (AND):
1.  Н_ЛЮДИ.ОТЧЕСТВО > Александрович.
2.  Н_ВЕДОМОСТИ.ЧЛВК_ИД < 105590.
                                Вид соединения: INNER JOIN.</div>
    
<h3>3.Составить запрос, который ответит на вопрос, есть ли среди студентов группы 3102 люди без ИНН.</h3>

<h3>4.В таблице Н_ГРУППЫ_ПЛАНОВ найти номера планов, по которым обучается (обучалось) ровно 2 групп на заочной форме обучения.</h3>
Для реализации использовать соединение таблиц.
<h3>5.Выведите таблицу со средним возрастом студентов во всех группах (Группа, Средний возраст), где средний возраст больше минимального возраста в группе 1100.</h3>
<h3>6.Получить список студентов, отчисленных после первого сентября 2012 года с очной или заочной формы обучения. В результат включить:</h3>
номер группы;<br>
номер, фамилию, имя и отчество студента;<br>
номер пункта приказа;<br>
Для реализации использовать подзапрос с EXISTS.
    <h3>7.Сформировать запрос для получения числа на ФКТИУ троечников.</h3>