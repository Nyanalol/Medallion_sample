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
					

				

			

		

	
					
# Labeled property graphs in graph in Microsoft Fabric

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

A labeled property graph (LPG) is a data model that represents entities as nodes and connections as edges, with labels and properties on both. Graph in Microsoft Fabric uses the LPG model to deliver fast traversal and query performance for analytics and connected data.

## What is a labeled property graph (LPG)?

Many popular graph databases use the LPG data model, including graph in Microsoft Fabric. In an LPG:

- You represent data as nodes and edges, which are also sometimes called vertices and relationships, respectively.

- You classify nodes (such as Person or Product) and edges (such as FRIENDS_WITH or PURCHASED) with **labels**.

- Both nodes and edges can have **properties** - key-value pairs that store more data (such as {name: "Alice", age: 30} for a node, {since: 2020} for an edge).

LPGs don't require global identifiers such as Internationalized Resource Identifiers (IRIs) or Uniform Resource Identifiers (URIs) for every node or edge. Instead, they use internal or application-level identifiers. Your application defines the meaning of labels.

## Resource Description Framework (RDF) comparison

Important

Graph in Microsoft Fabric only supports the LPG model. Resource Description Framework (RDF) isn't supported.

**RDF** is a World Wide Web Consortium (W3C)-standardized model for representing information as subject-predicate-object triples. It's often used for semantic web and knowledge graph scenarios. RDF excels at interoperability, data integration, and formal reasoning with ontologies. However, graph _doesn't support RDF_.

If your use case requires semantic web standards, semantic web ontologies, or global data integration, consider other platforms that support RDF. For enterprise analytics, operational graph workloads, and business intelligence scenarios, LPG is the recommended and supported model.

## Key benefits of the LPG model in Fabric

For most customers, the LPG model provides the best balance of performance, usability, and integration for connected data analytics in Microsoft Fabric.

- **Simplicity and intuitiveness:** Nodes and edges map closely to how people think about networks. LPG is less complex than RDF. You don't need to define ontologies or manage global identifiers.

- **Properties on edges:** Model weighted, temporal, or labeled relationships on edges. This feature supports advanced analytics like recommendations and fraud detection.

- **Performance and storage efficiency:** LPG-based graph databases store data compactly and enable fast traversals, even for large, complex graphs.

- **Flexible schema:** Evolve your graph model as your business needs change, without rigid constraints. Note that schema changes currently require you to create a new graph model and reload your data. For more information, see Design a graph schema.

- **Integration with Fabric:** Graph works with OneLake and Power BI, enabling seamless analytics and visualization.

For details on how node types and edge types map to lakehouse tables in Fabric, see Understand node types and edge types.

## Related content

- Design a graph schema

- Tutorial: Introduction to graph

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
		2026-04-15