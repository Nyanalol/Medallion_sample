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
					

				

			

		

	
					
# Graph and relational database comparison

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

A **graph database** stores and queries data as a network of nodes (entities) and edges (relationships). This approach differs from the tables-and-rows format of relational databases. Graph databases excel at modeling and analyzing highly connected data, such as social networks, knowledge graphs, recommendation systems, and fraud detection.

This article compares graph databases and relational databases. It highlights key differences, use cases, and advantages in analytics. Use this information to decide whether to use graph in Microsoft Fabric or a relational database for your specific needs.

## Core differences between graph and relational databases

- **Graph databases:** Organize data as nodes and edges, storing relationships explicitly. Traversing connections is efficient and often independent of total dataset size.

- **Relational databases:** Organize data in tables with rows and columns. Use JOIN operations to infer relationships at query time. For highly connected data, these operations can become complex and slow.

## Querying relationships: Joins versus traversals

**Relational database queries:** Foreign keys link data in different tables. To retrieve related data, relational databases use JOIN operations to combine rows from multiple tables. For simple relationships, JOINs work fine. But for deep or variable-length connections, they can get expensive and complex.

**Graph database queries:** Store relationships as edges, so you can directly traverse from one node to another. Graph queries can efficiently navigate multiple hops and complex patterns. Graph query languages like Graph Query Language (GQL) make it easy to express traversals and pattern matching.

**Example:**

GQL:

`
MATCH (p:Person)-[:friendsWith]->(friend)-[:purchased]->(o:Order)
WHERE p.name = 'Alice';
RETURN o

`

SQL (equivalent):

`
SELECT o.*
FROM Person AS p
JOIN Friends_With AS fw ON p.id = fw.person_id
JOIN Person AS friend ON fw.friend_id = friend.id
JOIN Purchased AS pur ON friend.id = pur.person_id
JOIN "Order" AS o ON pur.order_id = o.id
WHERE p.name = 'Alice';

`

Note

GQL is an ISO-standardized query language for graph databases. It's designed for efficient querying and manipulation of graph-structured data. The same international working group that oversees SQL is developing it.

## Performance implications for graph and relational databases

Graph databases can outperform relational databases for queries that involve many edges or unknown depths, especially for deep-link analytics or recursive queries. Relational databases excel at set-oriented operations and aggregations because of decades of optimization. In graph in Microsoft Fabric, the query engine is optimized for traversal and pattern matching across large-scale graphs stored in OneLake.

## Scaling considerations for graph and relational databases

- **Relational databases:** Typically scale vertically (bigger machines) and can scale horizontally through sharding and replication. Sharding highly connected schemas is complex and can cause cross-network overhead.

- **Graph databases:** Scale vertically and horizontally. Distributed graph databases partition graphs across machines, aiming to keep related nodes together for efficient traversals.

## When to use a graph database or a relational database

Use a graph database if:

- Your data is highly connected and relationship-heavy (social networks, knowledge graphs, and recommendations).

- You need to traverse an unknown or variable number of hops.

- The schema is evolving or semi-structured.

- You want intuitive modeling for domains where relationships are central.

Use a relational database if:

- Your data is mostly tabular or fits a well-defined structure.

- Your queries involve heavy aggregations or large set operations.

- You have existing tooling or expertise aligned with SQL.

## Hybrid approaches with graph and relational databases

Many projects use both types of databases: a relational database for core transactional data and a graph database for specialized analytics or network analysis features. In Microsoft Fabric, you can combine graph with other data stores in the same workspace, giving you both relational and graph capabilities without moving data between separate systems.

## Related content

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
		2026-04-01