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
					

				

			

		

	
					
# GQL standard conformance for graph in Microsoft Fabric

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

Graph in Microsoft Fabric implements the ISO/IEC 39075:2024 â Information technology â Database languages â GQL standard. This article maps graph's current support against the minimum conformance and optional feature groups defined in the standard. Check back for updates as features are added.

This reference article is intended for:

- Enterprise architects evaluating graph's GQL coverage.

- Developers migrating queries from another GQL-compliant database.

- Engineers validating conformance claims against the spec.

If you're getting started with GQL in Fabric, see the GQL language guide instead.

## How to read this article

The tables in this article use the following conventions:

Column Name
Description

**Subclause** or **Feature ID**
The identifier from the GQL standard. Minimum conformance capabilities use subclause numbers (for example, 14.4). Optional features use Feature IDs from Annex D (for example, G004 or GQ15).

**Capability** or **Feature**
The name or description of the capability or feature.

**Supported**
**Yes** â fully supported. **Partial** â some sub-capabilities are supported. **No** â not currently supported.

**Notes**
Implementation details, known constraints, or links to relevant documentation.

## Data model conformance

Graph implements the labeled property graph model. The following table summarizes data model support.

Feature ID
Feature
Supported
Notes

GG02
Graph with a closed graph type
Yes
Graph uses closed graph types that define allowed node types and edge types.

GG20
Explicit element type names
Yes
Node and edge types are identified by label names defined in the graph type.

GG23
Optional element type key label sets
Yes
The key label set of an element type is its element type name.

GH02
Undirected edges
No
All edges are directed.

GV11, GV12, GV24, GV31
Property value types
Yes
Supported types: BOOL, INT/INT64, UINT64, FLOAT64/DOUBLE, STRING. For the full type reference, see GQL values and value types. GV08, GV21, GV40, and GV07 have nuances â see the GV section.

## Minimum conformance

The GQL standard (Subclause 5.3.7) defines minimum conformance as support for all mandatory functionality â the full language syntax and semantics not gated by an optional Feature ID. The standard's informative Annex H documents mandatory functionality. On top of minimum conformance, an implementation can claim support for zero or more **optional features** identified by Feature IDs in the standard's Annex D.

In addition to the mandatory functionality, Subclause 24.2 requires that a minimum conformance claim include:

- Support for at least one of Feature GC00 ("Automatic graph population") or Feature GC04 ("Graph management"). See the GC section.

- A claim of conformance to a specific Unicode version (not less than 13.0.0). Character strings in graph are Unicode with UCS_BASIC collation.

- Support for at minimum these property value types: STRING (or VARCHAR), BOOL (or BOOLEAN), signed INTEGER (or INT), and FLOAT.

The following tables summarize the current state of graph's support for mandatory capabilities, organized by functional area.

### Session and transaction management (Subclauses 7â8)

Subclause
Capability
Supported
Notes

7
Session management
No

8
Transaction management
No

### Object expressions (Subclause 11)

Subclause
Capability
Supported
Notes

11
Object expressions
No
<graph expression>, <binding table expression>, <object expression primary>, and CURRENT_GRAPH aren't currently supported.

### Query statements (Subclause 14)

Subclause
Capability
Supported
Notes

14.3
Linear query statement / nested query specification
No
Nested query specifications aren't currently supported. Basic linear statement chaining is supported.

14.4
MATCH statement
Yes
MATCH with pattern matching.

14.4
OPTIONAL MATCH statement
Yes
OPTIONAL MATCH returns NULL for unmatched variables instead of filtering them out.

14.9
ORDER BY and page statement
Yes
ORDER BY, OFFSET, and LIMIT.

14.10
Primitive result statement
Yes
Supported through RETURN.

14.11
RETURN statement
Yes
RETURN with projections, aliases, and GROUP BY.

14.12
SELECT statement
No
Use RETURN instead.

### Graph patterns and common elements (Subclause 16)

Subclause
Capability
Supported
Notes

16.1
AT schema clause
No

16.3
Graph pattern binding table
Yes
Path binding and group variables.

16.4
Graph pattern
Yes
Simple anonymous patterns, named edge patterns, and composed patterns with WHERE clause.

16.4
Node patterns
Yes
(n:Label) syntax with element variable declarations, label expressions, and property specifications.

16.4
Edge patterns (full directed)
Yes
->, <-, and -[]- directed edge patterns.

16.4
Element property specification
Yes
{key: value} inline property predicates.

16.5
Insert graph pattern
No
GQL INSERT syntax isn't supported. Graph data is loaded through data management.

16.7
Path pattern expression
Yes
Path patterns with composition and variable-length traversals.

16.7
Path concatenation
Yes
Multi-hop patterns through sequential node-edge-node syntax.

16.8
Label expression
Yes
Label expressions with & (AND), \| (OR), and ! (NOT) operators.

16.9
Path variable reference
Yes
Path variables can be bound and returned.

16.10
Element variable reference
Yes
Node and edge element variables.

16.13
WHERE clause
Yes
FILTER statement and inline WHERE in pattern predicates.

16.14
YIELD clause
No

16.16
ORDER BY clause
Yes
ORDER BY with ASC/ASCENDING and DESC/DESCENDING.

16.17
Sort specification list
Yes
Multiple sort keys with ordering direction.

### Predicates (Subclause 19)

Subclause
Capability
Supported
Notes

19.3
Comparison predicate
Yes
Comparison operators: =, <>, <, >, <=, >=.

19.4
EXISTS predicate
No
EXISTS with graph patterns, parenthesized patterns, and nested queries isn't currently supported.

19.5
NULL predicate
Yes
IS NULL and IS NOT NULL.

19.7
NORMALIZED predicate
No
Unicode normalization functions aren't currently supported.

### Value expressions and functions (Subclause 20)

Subclause
Capability
Supported
Notes

20.2
Value expression primary
Yes
Literals, variable references, property access, and parenthesized expressions.

20.3
Value specification
Partial
Literals and variable references are supported. SESSION_USER and dynamic parameter specification aren't currently supported.

20.7
CASE expression
Yes
CASE (simple and searched), COALESCE, and NULLIF are supported.

20.9
Aggregate function
Yes
count, sum, avg, min, max with DISTINCT/ALL set quantifiers.

20.11
Property reference
Yes
Dot-notation property access on nodes and edges.

20.12
Binding variable reference
Yes
Variable references in expressions.

20.20
Boolean value expression
Partial
AND, OR, NOT are supported. IS [NOT] TRUE/FALSE/UNKNOWN tests aren't currently supported.

20.21
Numeric value expression
Yes
Arithmetic operators: +, -, *, /.

20.22
Numeric value function
Partial
char_length is supported. CHARACTER_LENGTH alias isn't currently supported.

20.23
String value expression
Yes
String concatenation with the \|\| operator.

20.24
Character string function
Partial
upper, lower, trim are supported. Unicode case mapping isn't fully supported. LEFT/RIGHT substring functions and NORMALIZE aren't currently supported.

20.25
Byte string function
No
Byte string types aren't supported.

20.27
Datetime value function
Yes
CURRENT_DATETIME is supported. See zoned datetime values.

20.29
Duration value function
No

### Value types (Subclause 24.2)

Graph supports all four required property value types: BOOL, STRING, signed INTEGER (64-bit), and FLOAT, plus additional types. For the full type reference, see GQL values and value types.

### Lexical elements (Subclause 21)

Subclause
Capability
Supported
Notes

21.1
Names and variables
Yes
Variable binding with forward scoping rules. Regular and delimited identifiers.

21.2
Literals
Yes
Literals for booleans, integers, floating-point numbers, strings (with C-style and SQL-style escaping), NULL, and lists.

21.3
Tokens, separators, identifiers
Yes
Standard GQL lexical rules.

## Optional feature conformance

A Feature ID identifies optional features. It starts with "G" followed by a group letter and digits. The following sections organize features by group.

### G â Graph pattern features

Feature ID
Feature
Supported
Notes

G002
Different-edges match mode
No

G003
Explicit REPEATABLE ELEMENTS keyword
Partial
Default match mode behavior is repeatable elements, but the explicit REPEATABLE ELEMENTS keyword isn't supported.

G004
Path variables
Yes
Path variable binding is supported.

G005
Path search prefix in a path pattern
No

G006
Graph pattern KEEP clause: path mode prefix
No

G007
Graph pattern KEEP clause: path search prefix
No

G010
Explicit WALK keyword
Yes
WALK allows repeated nodes and edges in matched paths.

G011
Advanced path modes: TRAIL
Yes
TRAIL prevents duplicate edge traversal.

G012
Advanced path modes: SIMPLE
Yes
SIMPLE prevents repeated nodes in matched paths.

G013
Advanced path modes: ACYCLIC
Yes
ACYCLIC prevents cycles in matched paths.

G014
Explicit PATH/PATHS keywords
No

G015
All path search: explicit ALL keyword
Partial
All path search behavior is available, but the explicit ALL keyword syntax isn't supported.

G016
Any path search
No

G017
All shortest path search
No

G018
Any shortest path search
No

G019
Counted shortest path search
No

G020
Counted shortest group search
No

G030
Path multiset alternation
No

G031
Path multiset alternation: variable length path operands
No

G032
Path pattern union
No

G033
Path pattern union: variable length path operands
No

G035
Quantified paths
Yes
Bounded variable-length patterns with {m,n} syntax.

G036
Quantified edges
No
Only quantified paths are supported.

G037
Questioned paths
No

G038
Parenthesized path pattern expression
No

G039
Simplified path pattern expression: full defaulting
No

G041
Non-local element pattern predicates
No
Non-local predicates that reference variables outside the current pattern element aren't currently supported. Local WHERE predicates in node and edge fillers are supported.

G043
Complete full edge patterns
Yes
Full directed edge patterns with -> and <-.

G044
Basic abbreviated edge patterns
Yes
Shorthand patterns like ()->() and ()-().

G045
Complete abbreviated edge patterns
Yes
Abbreviated edge pattern shortcuts for any direction.

G046
Relaxed topological consistency: adjacent vertex patterns
No

G047
Relaxed topological consistency: concise edge patterns
No

G048
Parenthesized path pattern: subpath variable declaration
No

G049
Parenthesized path pattern: path mode prefix
No

G050
Parenthesized path pattern: WHERE clause
No

G051
Parenthesized path pattern: non-local predicates
No

G060
Bounded graph pattern quantifiers
Yes
{m,n}, {m}, {,n} syntax. Maximum upper bound of 8.

G061
Unbounded graph pattern quantifiers
No
Unbounded quantifiers ({m,}, *, +) aren't currently supported. Bounded quantifiers have a maximum upper bound of 8.

G074
Label expression: wildcard label
No
Wildcards aren't currently supported.

G080
Simplified path pattern expression: basic defaulting
No

G081
Simplified path pattern expression: full overrides
No

G082
Simplified path pattern expression: basic overrides
No

G100
ELEMENT_ID function
No

G110
IS DIRECTED predicate
No

G111
IS LABELED predicate
No

G112
IS SOURCE and IS DESTINATION predicate
No

G113
ALL_DIFFERENT predicate
No

G114
SAME predicate
No

G115
PROPERTY_EXISTS predicate
No

### GA â General features

Feature ID
Feature
Supported
Notes

GA01
IEEE 754 floating-point operations
Yes
FLOAT64 uses IEEE 754 binary64 representation. See approximate numeric types and the Query API value encoding.

GA03
Explicit ordering of nulls
No
NULL sorts as the smallest value in ORDER BY, but explicit NULLS FIRST/NULLS LAST keywords aren't currently supported.

GA04
Universal comparison
No

GA05
Cast specification
Partial
CAST(value AS target_type) is supported. Unicode type casting isn't currently supported. See type conversions.

GA06
Value type predicate
No

GA07
Ordering by discarded binding variables
No

GA08
GQL-status objects with diagnostic records
Partial
Status objects with GQLSTATUS codes, messages, diagnostic records, and cause chains are supported. See status codes reference and the Query API status object. Full GQL status code coverage isn't yet complete.

GA09
Comparison of paths
No

### GB â Lexical features

Feature ID
Feature
Supported
Notes

GB01
Long identifiers
No

GB02
Double minus sign comments
Yes
-- line comments.

GB03
Double solidus comments
Yes
// line comments and /* */ block comments.

### GC â Catalog management features

Feature ID
Feature
Supported
Notes

GC01
Graph schema management
No

GC02
Graph schema management: IF [NOT] EXISTS
No

GC03
Graph type: IF [NOT] EXISTS
No

GC04
Graph management
Partial
CREATE GRAPH with a closed graph type is supported. GQL doesn't support DROP GRAPH. Use the Fabric UI or REST API instead.

GC05
Graph management: IF [NOT] EXISTS
No

### GD â Data modification features

Feature ID
Feature
Supported
Notes

GD01
Updatable graphs
No
Load and refresh graph data through data management, not through GQL INSERT/SET/DELETE statements.

GD02
Graph label set changes
No

GD03
DELETE statement: subquery support
No

GD04
DELETE statement: simple expression support
No

### GE â Expression features

Feature ID
Feature
Supported
Notes

GE01
Graph reference value expressions
No

GE02
Binding table reference value expressions
No

GE03
Let-binding of variables in expressions
Yes
LET statement for variable binding.

GE04
Graph parameters
No

GE05
Binding table parameters
No

GE06
Path value construction
Yes
PATH [node, edge, node] constructor for building path values.

GE07
Boolean XOR
Yes
Exclusive disjunction with XOR operator.

GE08
Reference parameters
No

GE09
Horizontal aggregation
Yes
Horizontal aggregation over group list variables from variable-length patterns.

### GF â Function features

Feature ID
Feature
Supported
Notes

GF01
Enhanced numeric functions
No
abs, mod, floor, ceil, and sqrt aren't currently supported.

GF02
Trigonometric functions
No

GF03
Logarithmic functions
No

GF04
Enhanced path functions
Yes
elements(path), path_length(path), nodes(path), and edges(path) are supported.

GF05
Multi-character TRIM function
No

GF06
Explicit TRIM function
No
TRIM with trim specification syntax (for example, TRIM('_' FROM '_x')) isn't supported. Basic trim(string) is supported as a mandatory capability.

GF07
Byte string TRIM function
No
Byte string types aren't supported.

GF10
Advanced aggregate functions: general set functions
Partial
collect_list is supported. stddev_pop, stddev_samp, and product aren't currently supported.

GF11
Advanced aggregate functions: binary set functions
No
percentile_cont and percentile_disc aren't currently supported.

GF12
CARDINALITY function
No
Use size(list) instead.

GF13
SIZE function
Yes
size(list) returns the number of elements in a list.

GF20
Aggregate functions in sort keys
No

### GG â Graph type features

Feature ID
Feature
Supported
Notes

GG01
Graph with an open graph type
No
Only closed graph types are supported.

GG02
Graph with a closed graph type
Yes
The default. Graph types define allowed node and edge types. See GQL graph types.

GG03
Graph type inline specification
Yes
Node and edge types are specified inline in the graph type definition.

GG04
Graph type like a graph
No

GG05
Graph from a graph source
No

GG20
Explicit element type names
Yes
Labels serve as element type names.

GG21
Explicit element type key label sets
No

GG22
Element type key label set inference
No

GG23
Optional element type key label sets
Yes
The key label set is the element type name.

GG24
Relaxed structural consistency
No

GG25
Relaxed key label set uniqueness for edge types
No

GG26
Relaxed property value type consistency
No

### GL â Literal features

Feature ID
Feature
Supported
Notes

GL01
Hexadecimal literals
No

GL02
Octal literals
No

GL03
Binary literals
No

GL04
Exact number in common notation without suffix
Yes
Integer literals like 123456. See exact numeric types.

GL05
Exact number with suffix
Yes
Integer literals with type suffixes.

GL06
Exact number in scientific notation with suffix
No

GL07
Approximate number in common notation with suffix
Yes
For example, 12.45f. See approximate numeric types.

GL08
Approximate number in scientific notation with suffix
Yes
Scientific notation with suffix for float literals.

GL09
Optional float number suffix
No

GL10
Optional double number suffix
No

GL11
Opt-out character escaping
No

GL12
SQL datetime formats
Yes
ISO 8601 format through ZONED_DATETIME('...'). See zoned datetime values.

### GP â Procedure features

Procedure features (GP01âGP18) aren't currently supported. This support includes CALL inline procedures, CALL named procedures, procedure-local variable definitions, and procedure arguments.

### GQ â Query composition features

Feature ID
Feature
Supported
Notes

GQ01
USE graph clause
No

GQ02
Composite query: OTHERWISE
No

GQ03
Composite query: UNION
Partial
UNION ALL is supported. UNION DISTINCT isn't currently supported.

GQ04
Composite query: EXCEPT DISTINCT
No

GQ05
Composite query: EXCEPT ALL
No

GQ06
Composite query: INTERSECT DISTINCT
No

GQ07
Composite query: INTERSECT ALL
No

GQ08
FILTER statement
Yes
FILTER with WHERE keyword.

GQ09
LET statement
Yes
LET for computed variables.

GQ10
FOR statement: list value support
No

GQ11
FOR statement: WITH ORDINALITY
No

GQ12
ORDER BY and page statement: OFFSET clause
Yes
OFFSET (also aliased as SKIP).

GQ13
ORDER BY and page statement: LIMIT clause
Yes
LIMIT.

GQ14
Complex expressions in sort keys
No

GQ15
GROUP BY clause
Yes
RETURN with GROUP BY.

GQ16
Pre-projection aliases in sort keys
No

GQ17
Element-wise group variable operations
Yes
Supported through horizontal aggregation.

GQ18
Scalar subqueries
No
Scalar subqueries aren't currently supported.

GQ19
Graph pattern YIELD clause
No

GQ20
Advanced linear composition with NEXT
No

GQ21
OPTIONAL: Multiple MATCH statements
Yes
OPTIONAL MATCH is supported.

GQ22
EXISTS predicate: multiple MATCH statements
No

GQ23
FOR statement: binding table support
No

GQ24
FOR statement: WITH OFFSET
No

### GS â Session management features

GQL session management features (GS01âGS16) aren't currently supported.

### GT â Transaction management features

GQL transaction management features (GT01âGT03) aren't currently supported.

### GV â Value type features

Feature ID
Feature
Supported
Notes

GV01
8-bit unsigned integer numbers
No

GV02
8-bit signed integer numbers
No

GV03
16-bit unsigned integer numbers
No

GV04
16-bit signed integer numbers
No

GV05
Small unsigned integer numbers
No

GV06
32-bit unsigned integer numbers
No

GV07
32-bit signed integer numbers
No
INT32 isn't supported as a GQL value type.

GV08
Regular unsigned integer numbers
Yes
UINT type.

GV09
Specified integer number precision
No

GV10
Big unsigned integer numbers
No

GV11
64-bit unsigned integer numbers
Yes
UINT64.

GV12
64-bit signed integer numbers
Yes
INT64.

GV13
128-bit unsigned integer numbers
No

GV14
128-bit signed integer numbers
No

GV15
256-bit unsigned integer numbers
No

GV16
256-bit signed integer numbers
No

GV17
Decimal numbers
No

GV18
Small signed integer numbers
No

GV19
Big signed integer numbers
No

GV20
16-bit floating-point numbers
No

GV21
32-bit floating-point numbers
No
FLOAT in graph aliases FLOAT64 (64-bit), not FLOAT32. See approximate numeric types.

GV22
Specified floating-point number precision
No

GV23
Floating-point type name synonyms
Yes
DOUBLE, FLOAT, and FLOAT64 all specify the same type.

GV24
64-bit floating-point numbers
Yes
DOUBLE/FLOAT64.

GV25
128-bit floating-point numbers
No

GV26
256-bit floating-point numbers
No

GV30
Specified character string minimum length
No

GV31
Specified character string maximum length
Yes
STRING type.

GV32
Specified character string fixed length
No

GV35
Byte string types
No

GV36
Specified byte string minimum length
No

GV37
Specified byte string maximum length
No

GV38
Specified byte string fixed length
No

GV39
Temporal types: date, local datetime, and local time
No
DATE, LOCAL DATETIME, and LOCAL TIME aren't supported. Only ZONED DATETIME is supported.

GV40
Temporal types: zoned datetime and zoned time
Partial
ZONED DATETIME is supported. ZONED TIME isn't currently supported.

GV41
Temporal types: duration
No

GV45
Record types
No

GV46
Closed record types
No

GV47
Open record types
No

GV48
Nested record types
No

GV50
List value types
Yes
LIST<element_type>. Lists can't contain mixed types.

GV55
Path value types
Yes
PATH type for matched paths.

GV60
Graph reference value types
No

GV61
Binding table reference value types
No

GV65
Dynamic union types
No

GV66
Open dynamic union types
No

GV67
Closed dynamic union types
No

GV68
Dynamic property value types
No

GV70
Immaterial value types
Yes
NULL and NOTHING types.

GV71
Immaterial value types: null type
Yes
NULL is a member of every nullable value type.

GV72
Immaterial value types: empty type
Yes
NOTHING / NULL NOT NULL.

GV90
Explicit value type nullability
Yes
NOT NULL syntax is supported for all types.

### GH â Other features

Feature ID
Feature
Supported
Notes

GH01
External object references
No

GH02
Undirected edge patterns
No
Graph requires directed edges. Any-directed patterns (-[]-) match based on connectivity regardless of direction.

## Features not yet supported

The following notable features aren't currently supported. For the full list, see any row marked **No** in the tables.

- EXISTS predicate (Subclause 19.4)

- SELECT statement (Subclause 14.12) â use RETURN instead

- CALL inline procedure / subqueries (GP01)

- FOR statement (GQ10)

- NEXT keyword for advanced linear composition (GQ20)

- UNION DISTINCT statement (GQ03) â UNION ALL is supported

- Unbounded graph pattern quantifiers: {m,}, *, + (G061)

- All shortest, any, and counted path searches (G016âG020)

- Scalar subqueries (GQ18)

- Enhanced numeric, trigonometric, and logarithmic functions (GF01âGF03)

- EXCEPT and INTERSECT statements (GQ04âGQ07)

- OTHERWISE statement (GQ02)

- GQL INSERT/SET/DELETE statements (GD01) â use data management instead

- Session management and transaction commands (Subclauses 7â8)

## Related content

- GQL language guide

- GQL values and value types

- GQL expressions, predicates, and functions

- GQL graph patterns

- GQL graph types

- Current limitations

- ISO/IEC 39075:2024 â GQL standard

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-24