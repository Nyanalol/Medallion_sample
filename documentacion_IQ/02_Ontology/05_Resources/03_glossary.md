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
					

				

			

		

	
					
# Ontology (preview) glossary

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					This article defines key ontology (preview) terminology. The terms are organized conceptually.

Important

This feature is in preview.

Term
Definition

_Entity type_
An abstract representation of a business object (like _Vehicle_ or _Sensor_). It defines a logical model of an item.

_Entity type key_
A unique identifier for each instance of an entity type within your ontology. You create this value from static data bound to one or more properties modeled on your entity type. Only string and integer properties can be used as keys.

_Entity instance_
A specific occurrence of an entity type, representing a real-world object with its own unique values for the defined properties. For example, if _Vehicle_ is an entity type, then a particular car with its own VIN, make, and model is an entity instance.

_Relationship type_
A definition that specifies how two entity types are connected (such as _located_at_ or _monitored_by_). 

You can define a relationship type without binding data to it. If you don't bind data, the relationship type isn't visualized in the preview experience.

_Relationship instance_
A specific occurrence of a relationship type between two entity instances.

_Property_
An attribute of an entity, like _ID_, _temperature_, or _location_. You can create properties manually or from data through data binding. 

You can bind properties to static or time series data. Static data doesn't change over time, and represents fixed characteristics about the entity type (like _ID_). Time series data contains attributes whose values vary over time (like _temperature_ and _location_). 

Property names can only be duplicated across entities for properties of the same type. For example, you can't have one entity type with a string ID property and another entity type with an integer ID property, but you can have two entity types that both have a string ID property.

_Data binding_
The process that connects the schema of entity types, relationship types, and properties to concrete data sources that drive enterprise operations and analytics.

_Configuration canvas_
The main view in the ontology (preview) item where you create and manage your ontology's entity types, relationship types, properties, and data bindings.

_Preview experience_
The view in the ontology (preview) item where you can view and explore your instantiated ontology data. The experience includes basic data previews, instance data, and a graph view.

_Graph in Microsoft Fabric_
A Fabric item that offers native graph storage and compute for nodes, edges, and traversals over connected data. It's good for path finding, dependency analysis, and graph algorithms. When you create an ontology item, a managed Graph item is created automatically. That Graph is integrated into ontology's preview experience and can be accessed independently in the Fabric workspace where the ontology item is located.

_Power BI semantic model in Fabric_
A logical description of an analytical domain (like a business). They hold information about your data and the relationships among that data. You can create them from lakehouse tables, and you can generate an ontology directly from your data in a semantic model.

_Fabric Activator_
The embedded rule execution and alerting engine within Microsoft Fabric that powers real-time responsiveness in ontology. It lets you define and manage event-driven rules and actions directly on semantic entities, without switching contexts or writing code. For more information about Activator, see What is Fabric Activator?.

_Rule_
(Available in ontology through Fabric Activator) A conditional statement that monitors property values or relationships (like "If temperature â¥ 80Â°F"), then triggers an action in response (like "send Teams alert" or "invoke Fabric Job").

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-03-11