# SQL

SQL (Structured Query Language) is the cornerstone of data engineering, providing the essential toolkit for interacting with relational databases. As a data engineer, you'll spend a significant amount of time querying, manipulating, and transforming data using SQL.

## Querying Counting & Aggregating

Counting the number of rows or records in a dataset

```sql
Select count(*) from Portfolios
```

Displaying the unique occurrence of a record

```sql
Select distinct PortfolioID from Portfolio
```

You can combined both to get the number of unique PortfolioID

```sql
Select count( distinct PortfolioID) from Portfolio
```

Aggregation include **_sum(); avg(); stdev()_**

```sql
Select avg( PortfolioNAV) from Portfolio
```

### Identifying Extreme Values

Calculating the maximum & minimum value to identify extreme value

```sql
Select max(PortfolioNAV) from Portfolio
```

```sql
Select min(PortfolioNAV) from Portfolio
```

### Slicing Data

To slice a dataset you can use the _Where_ clause

```sql
Select PortfolioNAV from Portfolio where PortfolioNAV > 1000000
```

### Sorting Data

Helps arrange the data in a meaningful order to understand and analyze. This can be achieved using the _order by_ clause. You can add _DES_ or _ASC_ to do the order in an ascending or descending fashion

```sql
Select PortfolioID from Portfolio Order by PortfolioNAV
```

### Filtering Patterns

Perform partial matches of data values. This can be achieved with the _like_ clause or _=_ operator coupled with a _where_ clause.

```sql
Select PortfolioName from Portfolio where PortfolioName  =  'BestStrat'
```

```sql
Select PortfolioName from Portfolio where PortfolioName  like  'BestStrat%'
```

Use the wildcard _%_ operator appropriately.

### Grouping Data

Perform a grouping of the data. Can be done with a _group by_ clause coupled with a grouping function (i.e. sum, avg...)

```sql
Select PortfolioID, avg( PortfolioNAV) as PF Nav from Portfolio group by PortfilioID
```

### Database Optimization for performance

### Common SQL Functions and Operators

- Arithmetic operators: `+, -, *, /, %`
- Comparison operators: `=, <>, !=, <, >, <=, >=`
- Logical operators: `AND, OR, NOT`
- Aggregate functions: `COUNT(), SUM(), AVG(), MIN(), MAX()`
- String functions: `LENGTH(), UPPER(), LOWER(), CONCAT(), SUBSTRING()`
- Date and time functions: `DATEADD(), DATEDIFF(), GETDATE()`

### Performance Metrics for DB

1. System outages
2. Capacity utilization
3. Application Slowdown
4. Performance of Queries
5. Conflicting Activities and Queries being executed simultaneously
6. Batch activities causing resource constraints

### Optimization Technics

**_Capacity Planning_** - Determining optimal hardware and software resources required for performance.

**_Database Indexing_** - Locate data without searching each row in DB.

**_Database Partitioning_** - Dividing large tables into smaller, individual tables.

**_Database Normalization_** - Reducing inconsistencies arising out of data redundancy and anomalies arising out of update, delete, and insert operations on DB.
