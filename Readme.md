# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"


Запросы для подготовки нового пользователя

```sql
CREATE ROLE migrator WITH LOGIN PASSWORD '<password>';

GRANT ALL PRIVILEGES ON DATABASE store TO migrator;
```