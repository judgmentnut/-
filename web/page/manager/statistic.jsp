<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Статистика</title>
    </head>
    <body>
<<<<<<< HEAD
        <h1>Проделанные заказы</h1>
=======
        <h1>Книги читаемые</h1>
>>>>>>> 0fcf8fe5cbbd48cb0530d41c6c82bffe99c41dc7
        <form action="showStatistic" method="POST">
            Период от:
            ${dateFrom}
            День:
            <select name="fromDay">
                <c:forEach begin="1" end="31" var="i">
                    <option value="${i}" <c:if test="${i eq fromDay}">selected</c:if>>${i}</option>
                </c:forEach>
            </select>
            Месяц:
            <select name="fromMonth">
                <c:forEach begin="1" end="12" var="i">
                    <option value="${i}" <c:if test="${i eq fromMonth}">selected</c:if>>${i}</option>
                </c:forEach>
            </select>
            Год:
            <select name="fromYear">
                <c:forEach begin="2014" end="2019" var="i">
                    <option value="${i}" <c:if test="${i eq fromYear}">selected</c:if>>${i}</option>
                </c:forEach>
            </select>
            <br> Период до: ${dateTo}
            День:
            <select name="toDay">
                <c:forEach begin="1" end="31" var="i">
                    <option value="${i}" <c:if test="${i eq toDay}">selected</c:if>>${i}</option>
                </c:forEach>
            </select>
            Месяц:
            <select name="toMonth">
                <c:forEach begin="1" end="12" var="i">
                    <option value="${i}" <c:if test="${i eq toMonth}">selected</c:if>>${i}</option>
                </c:forEach>
            </select>
            Год:
            <select name="toYear">
                <c:forEach begin="2014" end="2019" var="i">
                    <option value="${i}" <c:if test="${i eq toYear}">selected</c:if>>${i}</option>
                </c:forEach>
            </select>
<<<<<<< HEAD
            <br><br>
            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" name="timeRange" value="Показать">
        
        <br><br>
        В период от ${fromDay}.${fromMonth}.${fromYear} до ${toDay}.${toMonth}.${toYear} были сделаны заказы:
        <c:forEach var="history" items="${listHistories}">
            <p>"${history.product.name} - заказывал: ${history.buyer.name} ${history.buyer.surname}, ${history.buyer.email}, ${history.dateBegin} - ${history.dateEnd} </p>
        </c:forEach><br><br>
            <h2>Пиццы по популярности</h2>
            <c:forEach var="entry" items="${sortedMapProductsRate}" varStatus="count">
            <p>${count.index+1}. "${entry.key.name} | Рейтинг ${entry.value}</p>
        </c:forEach>
        <input type="submit" class="btn btn-outline-success my-2 my-sm-0" name="popProducts" value="Показать">    
       </form>  
        <br>
        <a href="index"><button class="btn btn-outline-success my-2 my-sm-0">Главная страница</button></a><br><br>
=======
            <br>
            <input type="submit" name="timeRange" value="Показать">
        
        <br>
        В период от ${fromDay}.${fromMonth}.${fromYear} до ${toDay}.${toMonth}.${toYear} были взяты следующие книги:
        <c:forEach var="history" items="${listHistories}">
            <p>"${history.product.name}. ${history.product.name}" - книгу брал: ${history.user.name} ${history.user.surname}</p>
        </c:forEach>
            <h2>Книги по популярности</h2>
            <c:forEach var="entry" items="${sortedMapProductsRate}" varStatus="count">
            <p>${count.index+1}. "${entry.key.name} | Рейтинг ${entry.value}</p>
        </c:forEach>  
        <input type="submit" name="popProducts" value="Показать">    
       </form>    
>>>>>>> 0fcf8fe5cbbd48cb0530d41c6c82bffe99c41dc7
            
    </body>
</html>