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
					

				

			

		

	
					
# Write common GQL queries in Microsoft Fabric

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

This article provides practical GQL query patterns for common graph tasks in Microsoft Fabric: finding neighbors, traversing multihop connections, identifying shared connections, counting relationships, and finding entities with no connections.

Examples use the social network sample dataset. For full language reference, see GQL language guide.

## Prerequisites

- A graph item with data loaded. If you're new to graph, complete the tutorial first.

- Familiarity with basic MATCH and RETURN queries. See GQL language guide.

## Find direct neighbors

Return all nodes connected to a starting node by one hop.

Find everyone a specific person knows:

`
MATCH (p:Person WHERE p.firstName = 'Alice')-[:knows]->(friend:Person)
RETURN friend.firstName, friend.lastName

`

Find all companies a person worked at:

`
MATCH (p:Person WHERE p.firstName = 'Alice')-[:workAt]->(c:Company)
RETURN c.name, c.url

`

## Find friends of friends (multi-hop)

Use variable-length patterns with {min,max} to traverse more than one hop.

Find people two hops away - friends of Alice's friends who Alice doesn't directly know:

`
MATCH (alice:Person WHERE alice.firstName = 'Alice')-[:knows]->{2,2}(fof:Person)
RETURN DISTINCT fof.firstName, fof.lastName
LIMIT 100

`

Find everyone reachable within three degrees:

`
MATCH (src:Person WHERE src.firstName = 'Alice')-[:knows]->{1,3}(dst:Person)
RETURN DISTINCT dst.firstName, dst.lastName
LIMIT 100

`

Tip

Always set an upper bound on variable-length traversal. Unbounded patterns across large or dense graphs can hit query timeout limits. See Current limitations.

## Count relationships per entity

Use GROUP BY with count(*) to count how many relationships each entity has.

Count how many friends each person has, ordered from most to fewest:

`
MATCH (p:Person)-[:knows]->(friend:Person)
LET name = p.firstName || ' ' || p.lastName
RETURN name, count(*) AS friendCount
GROUP BY name
ORDER BY friendCount DESC
LIMIT 20

`

Count how many employees work at each company:

`
MATCH (p:Person)-[:workAt]->(c:Company)
LET companyName = c.name
RETURN companyName, count(*) AS employeeCount
GROUP BY companyName
ORDER BY employeeCount DESC

`

## Find shared connections

Reusing a variable in two parts of a pattern creates an implicit "same node" constraint. Use this constraint to find entities connected through a shared third entity.

Find pairs of people who both know the same person:

`
MATCH (a:Person)-[:knows]->(mutual:Person)<-[:knows]-(b:Person)
WHERE a.id < b.id
RETURN a.firstName, b.firstName, mutual.firstName AS sharedContact
LIMIT 100

`

Find pairs of people who work at the same company:

`
MATCH (c:Company)<-[:workAt]-(a:Person), (c)<-[:workAt]-(b:Person)
WHERE a.id < b.id
RETURN a.firstName, b.firstName, c.name AS company
LIMIT 100

`

Tip

The WHERE a.id < b.id condition prevents duplicate pairs (AliceâBob and BobâAlice) from appearing in results.

## Find entities with no relationships

Use OPTIONAL MATCH followed by a null check to find nodes that have no matching relationship.

Find people who don't work at any company:

`
MATCH (p:Person)
OPTIONAL MATCH (p)-[:workAt]->(c:Company)
FILTER c IS NULL
RETURN p.firstName, p.lastName
LIMIT 100

`

Find posts with no comments:

`
MATCH (post:Post)
OPTIONAL MATCH (comment:Comment)-[:replyOf]->(post)
FILTER comment IS NULL
RETURN post.id, post.content
LIMIT 100

`

## Find entities with many connections

Combine GROUP BY and FILTER to identify highly connected nodes. This method is useful for finding hubs or outliers.

Find people with more than 10 friends:

`
MATCH (p:Person)-[:knows]->(friend:Person)
LET name = p.firstName || ' ' || p.lastName
RETURN name, count(*) AS friendCount
GROUP BY name
FILTER friendCount > 10
ORDER BY friendCount DESC

`

Note

FILTER after GROUP BY works like HAVING in SQL. It filters on the aggregated result, not the individual rows.

## Related content

- Write graph pattern queries

- Filter and aggregate graph data

- GQL language guide

- GQL graph patterns

- Optimize GQL query performance

- Current limitations

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-28