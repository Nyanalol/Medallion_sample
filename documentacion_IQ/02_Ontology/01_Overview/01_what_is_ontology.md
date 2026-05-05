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
					

				

			

		

	
					
# What is ontology (preview)?

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					The _ontology (preview)_ item (part of the Fabric IQ (preview) workload) digitally represents the enterprise vocabulary and semantic layer that unifies meaning across domains and OneLake sources. It defines enterprise concepts as _entity types_ (like _Customer_), _properties_ (like a Customer's _name_ and _email_), and _relationships_ (like _Customer places Order_), while clarifying the constraints of these terms. After defining your ontology, bind the entity type definitions to real data, so downstream tools can share the same language. Both humans and AI agents can use this language for cross-domain reasoning and decision-ready actions.

Ontology provides a scaled, secure, and governed shared business model used across teams, agents, and workflows in Fabric IQ. It provides a shared context layer that can be consumed by Fabric Data Agents and Real-Time Intelligence components for consistent reasoning and actions. Ontology works well in situations where you need cross-domain consistency, governance, or AI agent grounding, and you want to reason across processes.

Important

This feature is in preview.

## Ontology overview

An _ontology_ is a shared, machine-understandable vocabulary of your business. It's made up of the **things** in your environment (represented as _entity types_), their **facts** (represented as _properties_ on entity types), and the ways they **connect** (represented as _relationships_), while offering constraints and rules that keep representations consistent.

You can also think of an ontology like a business context layer, containing:

- A catalog of concepts (like _Product_, _Order_, _Plant_, _Sensor_, _Route_), defined once and reused everywhere

- Data bindings, or connections that link those concepts to your actual data sources in OneLake

- A graph representation that links related concepts for richer navigation, lineage, and reasoning

- A query surface that lets you ask questions about concepts (not just tables), supporting federated queries across sources

## Core concepts: Defining an ontology

An ontology consists of entity types, entity instances, properties, and relationships. This section describes each of these core concepts.

### Entity type

An _entity type_ is the reusable logical model of a real world concept (like _Shipment_, _Product_, or _Sensor_). It standardizes the name, description, identifiers, properties, and constraints for that item, so that every team in your business means the same thing when they use a term like "shipment." By elevating the concept above any single table, entity types eliminate conflicting column level definitions across sources. They provide a single point to attach properties, relationships, and labels that downstream tools can use to improve semantics across tables and models.

### Entity instance

An _entity instance_ is a concrete occurrence of an entity type, populated from data bindings (like a semantic row). Entity instances keep track of which source created them and when they were true, and can participate in relationships. Entity instances turn your raw data into standardized business objects that all your tools and AI agents can understand in the same way.

### Property

A _property_ is a named fact about an entity, with a declared data type. It can contain bindings to source data and semantic annotations (like an _identifier_ or metadata attributes). Properties improve semantics by enforcing consistent types, units, and naming, and by enabling rules and quality checks at the concept level.

### Relationship

A _relationship_ is a typed, directional link between entity types or instances. Relationships can have attributes (like _distance_, _confidence_, or _effectiveAt_) and cardinality rules defining how many items can be related (for example, one _Customer_ having many _Orders_). Relationships make context explicit and reusable for how things connect, enabling traversal, dependency analysis, rule based inference, and clearer answers to business questions without custom join logic.

## Core concepts: Your data in the ontology

After you define an ontology, you can bind it to your data to visualize and query the data in the context of your ontology. Read about each core data concept in the following sections.

### Data binding

_Data binding_ connects your ontology's definitions (including entity types, properties, and relationships) to concrete data living in OneLake, including lakehouse tables, eventhouse streams, and Power BI semantic models. A data binding describes data types, identity keys, how columns map to properties, and how keys map to relationships across multiple data sources. By enabling schema evolution rules, data quality checks (based on things like nullability, ranges, and uniqueness), and provenance at the concept layer, bindings turn raw rows and events into governed business objects. Data binding ensures your data has consistent meaning, follows the same rules, and tracks where it came from across different data sources.

Note

Any updates in upstream data sources (like new rows) need to be manually refreshed before they're visible in the ontology item. For more information, see refresh the graph model.

### Ontology graph

Important

Ontology's graph feature relies on Graph in Microsoft Fabric, so you must enable the Graph setting for your tenant. For more information, see Ontology (preview) required tenant settings.

The _ontology graph_ is a queryable instance graph built from your data bindings and relationship definitions. You can see it from the ontology preview experience. In the graph, nodes are entity instances, and edges are links (either asserted or derived) with metadata attributes. Each node or edge keeps data source lineage and follows a scheduled data refresh. Graphs enable visual exploration of business context, execution of graph algorithms (like paths, centrality, and communities), and ruleâdriven inferences. Graphs improve semantics by making relationships firstâclass, so context is explicit, queryable, and governed (not buried in join logic).

Note

Any updates in upstream data sources (like new rows) need to be manually refreshed before they're visible in the ontology item. For more information, see refresh the graph model.

### Querying your ontology

_Ontology querying_ lets you ask business-level questions over bound data sources through ontology terminology. Queries start with entity types and allow filtering by properties, traversing relationships, aggregating by time, and other constraints. The ontology layer automatically sends your queries to the most efficient system to get results quickly (such as GQL for Graph in Microsoft Fabric and KQL for Eventhouse). It also includes an Natural Language to Ontology (NL2Ontology) query layer, which converts your natural language questions into structured queries and returns relevant results. This enables you to ask questions using business terms, instead of needing to know the details of how your data is stored in different systems. NL2Ontology queries ensure that filters, joins, units, and validity windows align with the definitions that are published in your ontology.

## Next steps

- Prepare your tenant for ontology (preview) by enabling required tenant settings in Ontology (preview) required tenant settings.

- Get started with the Ontology (preview) tutorial.

- Skip ahead to instructions for generating an ontology from a semantic model.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-03