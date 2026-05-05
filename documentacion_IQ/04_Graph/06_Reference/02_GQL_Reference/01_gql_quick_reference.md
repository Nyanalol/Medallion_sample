Table of contents 
			
			
				
				Exit editor mode
			
		

	

			
				
					
		
			
				
		
			
				
					
				
			
			

		

		
	 
		
			
		
			
				
			
		
		
			
				
			
			Ask Learn
		
		
			
				
			
			Ask Learn
		
	 

			
				
					
						
					
				
				
					
		
			
				
			
			Reading mode
		
	 
		
			
			Table of contents
		
	 
		
			
				
			
			Read in English
		
	
					
		
			
				
			
			Add
		
	 
		
			
				
			
			Add to plan
		
	 
					
		
			
				
			
			Edit
		
	  
		
		
				
					
						
						
						
					
					Copy Markdown
				
		   
				
					
						
					
					Print
				
		  
	
				

			
		

	
			

		

	  
		
		
			
			
				
					
						
						Note
					

					
						Access to this page requires authorization. You can try signing in or changing directories.
					

					
						Access to this page requires authorization. You can try changing directories.
					

				

			

		

	
					
# GQL quick reference

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

This article is a quick reference for GQL (Graph Query Language) syntax for graph in Microsoft Fabric. For detailed explanations, see the GQL language guide.

Note

This article primarily uses the social network example graph dataset. It also provides a few examples that use the Adventure Works dataset from the graph tutorial.

## Query structure

GQL queries use a sequence of statements that define what data to get from the graph, how to process it, and how to show the results. Each statement has a specific purpose, and together they create a linear pipeline that matches data from the graph and transforms it step by step.

**Typical query flow:**

A GQL query usually starts by specifying the graph pattern to match. Then, it uses optional statements for variable creation, filtering, sorting, pagination, and result output.

**Example:**

`
MATCH (n:Person)-[:knows]->(m:Person) 
LET fullName = n.firstName || ' ' || n.lastName 
FILTER m.gender = 'female' 
ORDER BY fullName ASC 
OFFSET 10
LIMIT 5 
RETURN fullName, m.firstName

`

**Statement order:**

Important

graph doesn't yet support arbitrary statement composition.
See the article on current limitations.

Statements generally can appear in any order within a query:

- MATCH â Specify graph patterns to find.

- LET â Define variables from expressions.

- FILTER â Keep rows matching conditions.

- ORDER BY â Sort results.

- OFFSET â Skip many rows.

- LIMIT â Restrict the number of rows.

- RETURN â Output the final results.

Each statement builds on the previous one, so you incrementally refine and shape the query output. For more information on each statement, see the following sections.

## Query statements

### MATCH

Find graph patterns in your data.

**Syntax:**

`
MATCH <graph pattern> [ WHERE <predicate> ]
...

`

**Example:**

`
MATCH (n:Person)-[:knows]-(m:Person) WHERE n.birthday > 2000
RETURN *

`

For more information about the MATCH statement, see the Graph patterns.

### LET

Create variables by using expressions.

**Syntax:**

`
LET <variable> = <expression>, <variable> = <expression>, ...
...

`

**Example:**

`
MATCH (n:Person)
LET fullName = n.firstName || ' ' || n.lastName
RETURN fullName

`

For more information about the LET statement, see the GQL language guide.

### FILTER

Keeps rows that match conditions.

**Syntax:**

`
FILTER [ WHERE ] <predicate>
...

`

**Example:**

`
MATCH (n:Person)-[:knows]->(m:Person)
FILTER WHERE n.birthday > m.birthday
RETURN *

`

For more information about the FILTER statement, see the GQL language guide.

### ORDER BY

Sorts the results.

**Syntax:**

`
ORDER BY <expression> [ ASC | DESC ], ...
...

`

**Example:**

`
MATCH (n:Person)
RETURN *
ORDER BY n.lastName ASC, n.firstName ASC

`

Important

The requested order of rows is only guaranteed to hold immediately after a preceding ORDER BY statement.
Any following statements (if present) aren't guaranteed to preserve any such order.

For more information about the ORDER BY statement, see the GQL language guide.

### OFFSET/LIMIT

Skip rows and limit the number of results.

**Syntax:**

`
OFFSET <offset> [ LIMIT <limit> ]
LIMIT <limit>
...

`

**Example:**

`
MATCH (n:Person)
ORDER BY n.birthday
OFFSET 10 LIMIT 20
RETURN n.firstName || ' ' || n.lastName AS name, n.birthday

`

For more information about the OFFSET and LIMIT statements, see the GQL language guide.

### RETURN

Output the final results.

**Syntax:**

`
RETURN [ DISTINCT ] <expression> [ AS <alias> ], ...

`

**Example:**

`
MATCH (n:Person)
RETURN n.firstName, n.lastName

`

For more information about the RETURN statement, see the GQL language guide.

## Graph patterns

Graph patterns describe the structure of the graph to match.

### Node patterns

In graph databases, use nodes to represent entities, such as people, products, or places.

Node patterns describe how to match nodes in the graph. You can filter by label or bind variables.

`
(n)              -- Any node
(n:Person)       -- Node with Person label  
(n:City&Place)   -- Node with City AND Place label
(:Person)        -- Person node, don't bind variable

`

For more information about node patterns, see the Graph patterns.

### Edge patterns

Edge patterns specify relationships between nodes, including direction and edge type. In graph databases, an edge represents a connection or relationship between two nodes.

`
<-[e]-             -- Incoming edge
-[e]->             -- Outgoing edge
-[e]-              -- Any edge
-[e:knows]->       -- Edge with label ("relationship type")
-[e:knows|likes]-> -- Edges with different labels
-[:knows]->        -- :knows edge, don't bind variable

`

For more information about edge patterns, see the Graph patterns.

### Label expressions

Label expressions let you match nodes with specific label combinations by using logical operators.

`
:Person&Company                  -- Both Person AND Company labels
:Person|Company                  -- Person OR Company labels
:!Company                        -- NOT Company label
:(Person|!Company)&Active        -- Complex expressions with parentheses

`

For more information about label expressions, see the Graph patterns.

### Path patterns

Path patterns describe traversals through the graph, including hop counts and variable bindings.

`
(a)-[:knows|likes]->{1,3}(b)      -- 1-3 hops via knows/likes
p=()-[:knows]->()                 -- Binding a path variable

`

For more information about path patterns, see the Graph patterns.

### Multiple patterns

Use multiple patterns to match complex, nonlinear graph structures in a single query.

`
(a)->(b), (a)->(c)               -- Multiple edges from same node
(a)->(b)<-(c), (b)->(d)          -- Nonlinear structures

`

For more information about multiple patterns, see the Graph patterns.

## Values and value types

### Basic types

Basic types are primitive data values like strings, numbers, booleans, and datetimes.

`
STRING           -- 'hello', "world"
INT64            -- 42, -17
FLOAT64          -- 3.14, -2.5e10
BOOL             -- TRUE, FALSE, UNKNOWN
ZONED DATETIME   -- ZONED_DATETIME('2023-01-15T10:30:00Z')

`

For more information about basic types, see GQL values and value types.

### Reference value types

Reference value types are nodes and edges that you use as values in queries.

`
NODE             -- Node reference values
EDGE             -- Edge reference values

`

For more information about reference value types, see GQL values and value types.

### Collection types

Collection types group multiple values, like lists and paths.

`
LIST<INT64>      -- [1, 2, 3]
LIST<STRING>     -- ['a', 'b', 'c']
PATH             -- Path values

`

For more information about collection types, see GQL values and value types.

### Material and nullable types

Every value type is either nullable (includes the null value) or material (excludes it).
By default, types are nullable unless you explicitly specify NOT NULL.

`
STRING NOT NULL  -- Material (Non-nullable) string type
INT64            -- Nullable (default) integer type

`

 { 
    id :: UINT64 NOT NULL, 
    name :: STRING 
})

(:University => :Organization)   -- Inheritance
ABSTRACT (:Message => { ... })   -- Abstract type
```

### Edge types

```gql
(:Person)-[:knows { creationDate :: ZONED DATETIME }]->(:Person)
(:Person)-[:workAt { workFrom :: UINT64 }]->(:Company)
```

### Node key constraints

```gql
CONSTRAINT person_pk
  FOR (n:Person) REQUIRE n.id IS KEY

CONSTRAINT compound_key  
  FOR (n:Node) REQUIRE (n.prop1, n.prop2) IS KEY
```

Learn more about [graph types](gql-graph-types.md).
-->

## Expressions & operators

### Conditional

Conditional expressions return different values based on conditions.

`
CASE WHEN cond THEN val ELSE val END   -- Searched CASE
CASE expr WHEN val THEN val ELSE val END -- Simple CASE
NULLIF(a, b)                           -- NULL if a = b

`

For more information about conditional expressions, see the GQL expressions and functions.

### Comparison

Comparison operators compare values and check for equality, ordering, or nulls.

`
=, <>, <, <=, >, >=              -- Standard comparison
IS NULL, IS NOT NULL             -- Null checks

`

For more information about comparison predicates, see the GQL expressions and functions.

### Logical

Logical operators combine or negate boolean conditions in queries.

`
AND, OR, NOT, XOR               -- Boolean logic

`

For more information about logical expressions, see the GQL expressions and functions.

### Arithmetic

Arithmetic operators perform calculations on numbers.

`
+, -, *, /                       -- Basic arithmetic operations

`

For more information about arithmetic expressions, see the GQL expressions and functions.

### String patterns

String pattern predicates match substrings, prefixes, or suffixes in strings.

`
n.firstName CONTAINS 'John'          -- Has substring
n.browserUsed STARTS WITH 'Chrome'   -- Starts with prefix
n.locationIP ENDS WITH '.1'          -- Ends with suffix

`

For more information about string pattern predicates, see the GQL expressions and functions.

### List operations

List operations test membership, access elements, and measure list length.

`
n.gender IN ['male', 'female']    -- Membership test
n.tags[0]                        -- First element
size(n.tags)                     -- List length

`

For more information about list membership predicates, see the GQL expressions and functions.

### Property access

Property access gets the value of a property from a node or edge.

`
n.firstName                      -- Property access

`

For more information about property access, see the GQL expressions and functions.

## Functions

### Aggregate functions

Aggregate functions compute summary values for groups of rows (vertical aggregation) or over the elements of a group list (horizontal aggregation).

`
count(*)                         -- Count all rows
count(expr)                      -- Count non-null values
sum(p.birthday)                  -- Sum values
avg(p.birthday)                  -- Average
min(p.birthday), max(p.birthday) -- Minimum and maximum values
collect_list(p.firstName)        -- Collect values into a list

`

Learn more about aggregate functions in the GQL expressions and functions.

### String functions

String functions let you work with and analyze string values.

`
char_length(s)                   -- String length
upper(s), lower(s)               -- Change case (US ASCII only)
trim(s)                          -- Remove leading and trailing whitespace
string_join(list, separator)     -- Join list elements with a separator

`

Learn more about string functions in the GQL expressions and functions.

### List functions

List functions let you work with lists, like checking length or trimming size.

`
size(list)                       -- List length
trim(list, n)                    -- Trim a list to be at most size `n`

`

For more information about list functions, see GQL expressions and functions.

### Graph functions

Graph functions let you get information from nodes, paths, and edges.

`
labels(node)                     -- Get node labels
nodes(path)                      -- Get path nodes
edges(path)                      -- Get path edges
elements(path)                   -- Get all path nodes and edges
path_length(path)                -- Get number of edges in a path

`

For more information about graph functions, see GQL expressions and functions.

### Temporal functions

Temporal functions let you work with date and time values.

`
zoned_datetime()               -- Get the current timestamp

`

For more information about temporal functions, see GQL expressions and functions.

### Generic functions

Generic functions let you work with data in common ways.

`
coalesce(expr1, expr2, ...)    -- Get the first non-null value
to_json_string(value)          -- Convert value to JSON string
nullif(a, b)                   -- NULL if a = b, else a

`

For more information about generic functions, see GQL expressions and functions.

## Common patterns

This section shows some common GQL query patterns that you can use.

### Social network examples

These examples use the social network example graph dataset.

#### Find all nodes of a type

`
-- Get all nodes with a specific label
MATCH (p:Person) RETURN p

`

#### Find nodes with specific properties

`
-- Filter nodes by property value
MATCH (p:Person) FILTER p.firstName = 'Annemarie' RETURN p

`

#### Find connections

`
-- Friends of friends  
MATCH (me:Person {firstName: 'Annemarie'})-[:knows]->{2}(fof:Person)
WHERE fof <> me
RETURN DISTINCT fof.firstName

`

#### Traverse relationships

`
-- Multi-hop traversal through different edge types
MATCH (p:Person)-[:knows]->(f:Person)-[:isLocatedIn]->(c:City)
RETURN p.firstName, f.firstName, c.name

`

#### Aggregation

`
-- Count by group
MATCH (p:Person)-[:isLocatedIn]->(c:City)
RETURN c.name AS name, count(*) AS population
GROUP BY name
ORDER BY population DESC

`

#### Top k

`
-- Top 10
MATCH (p:Person)-[:hasCreator]-(m:Post)
RETURN p.firstName AS name, count(m) AS posts
GROUP BY name
ORDER BY posts DESC
LIMIT 10

`

#### Filtering and conditions

`
-- Complex conditions
MATCH (p:Person)-[:isLocatedIn]->(c:City)
WHERE p.birthday >= 19800101 AND p.birthday <= 20000101
  AND c.name IN ['Seattle', 'Portland']
  AND p.firstName IS NOT NULL
RETURN p.firstName, p.birthday

`

#### Path traversal

`
-- Variable length paths
MATCH p = TRAIL (src:Person {firstName: 'Annemarie'})-[:knows]->{1,3}(dst:Person)
WHERE dst.firstName = 'Alexander'
RETURN p

`

### Adventure Works examples

These examples use the Adventure Works dataset from the graph tutorial.

#### Find all customers

`
-- Get all customer nodes
MATCH (c:Customer) RETURN c

`

#### Find products by name

`
-- Filter products by name
MATCH (p:Product) FILTER p.productName = 'Mountain Bike' RETURN p

`

#### Traverse customer orders

`
-- Multi-hop traversal: customers to orders to products
MATCH (c:Customer)-[:purchases]->(o:Order)-[:contains]->(p:Product)
RETURN c, o, p

`

#### Count orders by employee

`
-- Count orders by employee
MATCH (e:Employee)-[:sells]->(o:Order)
RETURN e.employeeName, count(o) AS total_orders
GROUP BY e.employeeName
ORDER BY total_orders DESC

`

## Related content

- GQL language guide

- Try Microsoft Fabric for free

- End-to-end tutorials in Microsoft Fabric

					
		

	 
		

		

	
					
		
		
			
			
## Feedback

			
				
					Was this page helpful?
				

				
					
						
							
						
						Yes
					
					
						
							
						
						No
					
					
						
							
								
							
							No
						
						
							
								Need help with this topic?
							

							
								Want to try using Ask Learn to clarify or guide you through this topic?
							

							
		
			
		
			
				
			
		
		
			
				
			
			Ask Learn
		
		
			
				
			
			Ask Learn
		
	

			
				
					
				
				 Suggest a fix? 
			
		

	
						

					
				

			

		
		
	
				

				
		
			
			
				Additional resources
			
			 
		
	 
		
	
		

	 
		
			
			
				
			
				Last updated on 
		2026-04-23