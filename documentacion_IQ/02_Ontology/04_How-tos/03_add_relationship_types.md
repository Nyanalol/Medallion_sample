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
					

				

			

		

	
					
# Relationship types in ontology (preview)

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Relationships allow organizations to model, manage, and govern semantic connections between business entities. Clearly defined relationships help organizations turn complex connections into actionable insights and decisions with the following benefits:

- Semantic clarity: Explicitly defined relationships (such as _owns_, _located at_, _supplies_, or _monitored by_) allow organizations to represent not only what entities exist, but how they interact.

- Analytics: Ontologies that are enriched with relationships offer contextualized insights.

Important

This feature is in preview.

## Prerequisites

Before adding relationship types to your ontology, make sure you have the following prerequisites:

- A Fabric workspace with a Microsoft Fabric-enabled capacity.

- **Ontology item (preview)** enabled on your Fabric tenant.

- An ontology (preview) item with entity types created.
Relationship source data that meets these guidelines:

- The data is in OneLake.

- The source data contains keys for both the source and target entity type.

## Key concepts

Relationship types use the following ontology (preview) concepts. For definitions of these terms, see the Ontology (preview) glossary.

- _Entity type_

- _Relationship type_

- _Relationship instance_

## Create relationship type

The first step in adding a relationship in your ontology (preview) item is creating a relationship type. Then, bind data to the relationship type to create relationship instances.

For example, suppose you want to define a relationship between the entity types _Truck_ and _Driver_, and your data contains a table called _Truck data_ with columns TruckId, Site, TruckName, and DriverId. You might start by defining a relationship type called _drives_ from the _Driver_ entity type to the _Truck_ entity type. Then, create a data binding based on the _Truck data_ table, using the columns TruckId and DriverId to define relationship instances for that relationship type. The result is that your _drives_ relationship type has instances to represent each combination of TruckId and DriverId in your data.

Follow these steps to create a relationship type and bind data to it:

Select **Add relationship** in the menu ribbon. Or, highlight an entity type in the **Entity Types** pane and select **...**, then **Add relationship**.

In the **Add relationship type to ontology** window,

- Enter a **Relationship type name**.

- Select the **Source entity type** and **Target entity type** for your relationship. The source and target entity types must be distinct from one another.

Select **Add relationship type**.

The **Relationship configuration** pane opens. In this pane, you define the columns from the source data that connect instances of these entity types.

Under **Source data**, select your workspace, lakehouse, and table that contains the keys for both your target and source entity type.

For each entity type, select a **Source column** from the linking source data that identifies instances of that entity type. The source column selections must match the entity type keys.

Tip

If you don't see any keys for an entity type, make sure your source and target entity types have keys defined.

Select **Create**.

Verify the new relationship type is visible on the configuration canvas.

## Edit or delete relationship type

You can edit or delete relationship types that exist in your ontology (preview) items in the **Relationship configuration** pane.

To **edit** a relationship type, select it in the configuration canvas. Then, update any of the fields in the **Relationship configuration** pane.

To **delete** a relationship type, select it in the configuration canvas. Then, select the **Delete relationship type** button in the **Relationship configuration** pane.

Note

Any updates in upstream data sources (like new rows) need to be manually refreshed before they're visible in the ontology item. For more information, see refresh the graph model.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-01-21