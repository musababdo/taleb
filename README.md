# Database Restore Guide

## 1. Full Database Restore

Before restoring the full database, clear the existing database.

Go to the **SQL Editor** in your database dashboard and run:

```sql
DROP SCHEMA public CASCADE;
CREATE SCHEMA public;
```

Then run:

```powershell
.\restore-full.ps1
```

---

## 2. Restore a Single Table

To restore only one table:

```powershell
.\restore-table.ps1 table_name
```

**Example:**

```powershell
.\restore-table.ps1 users
```

---

## 3. Restore Multiple Tables

To restore multiple tables:

```powershell
.\restore-tables.ps1 table_name1 table_name2 table_name3
```

**Example:**

```powershell
.\restore-tables.ps1 users products orders
```

---

## 4. Replace a Single Table

This will delete the current table and restore it from the latest backup.

```powershell
.\restore-replace-table.ps1 table_name
```

**Example:**

```powershell
.\restore-replace-table.ps1 users
```

---

## 5. Replace Multiple Tables

This will replace multiple existing tables with the versions from the latest backup.

```powershell
.\restore-replace-tables.ps1 table_name1 table_name2 table_name3
```

**Example:**

```powershell
.\restore-replace-tables.ps1 users products orders
```

You can specify as many table names as needed.
