Restaurant Order Management System

This project develops a Restaurant Order Management System for a restaurant that handles both dine-in and takeout service. The system stores customer information, employee information, restaurant tables, menu categories, menu items, orders, order details, takeout pickup details, and payments. The database is normalized to 3NF so that data redundancy is minimized and data integrity is improved.

This design follows 3NF because each table has one purpose and its own primary key. All other columns depend on that key. Repeated data is reduced by putting menu categories, takeout details, and order items into separate tables. Also, there are no extra dependencies, since information like category names and pickup details are not repeated in different tables.

Restaurants need an organized system to manage orders efficiently. In a real restaurant, dine-in and takeout orders follow similar but not identical processes. A dine-in order needs table information, while a takeout order needs pickup information. This project solves that problem by designing one database that supports both order types in a clean and scalable way.
