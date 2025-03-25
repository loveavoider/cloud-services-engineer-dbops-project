### Запросы для подготовки нового пользователя

```sql
CREATE ROLE migrator WITH LOGIN PASSWORD '<password>';

GRANT ALL PRIVILEGES ON DATABASE store TO migrator;
```

### Запрос для получения продаж сосисок

```sql
SELECT o.date_created, SUM(op.quantity)
     FROM orders AS o
        JOIN order_product AS op ON o.id = op.order_id
     WHERE o.date_created > NOW() - INTERVAL '7 DAY' AND o.status = 'shipped'
     GROUP BY o.date_created;
```