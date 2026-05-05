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
					

				

			

		

	
					
# Entity type creation in ontology (preview)

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					_Entity types_ represent real-world concepts such as _Truck_, _Sensor_, or _Customer_. They define standard names, descriptions, identifiers, and properties to ensure consistency across data sources and tools. By modeling your domain with entity types, you eliminate inconsistent column-level definitions and create a shared semantic layer that powers downstream experiences like analytics and AI agents. You can create entity types manually or import them from existing business logic in semantic models.

Important

This feature is in preview.

## Prerequisites

Before creating entity types, make sure you have the following prerequisites:

- A Fabric workspace with a Microsoft Fabric-enabled capacity.

- **Ontology item (preview)** enabled on your Fabric tenant.

- An ontology (preview) item.

- Understanding of core ontology concepts.

- Understanding of the data binding process from Data binding.

## Key concepts

Entity types use the following ontology (preview) concepts. For definitions of these terms, see the Ontology (preview) glossary.

- _Entity type_

- _Entity type key_

- _Entity instance_

- _Property_

- _Data binding_

## Create an entity type

Follow these steps to create entity types in your ontology (preview) item.

Select **Add entity type** from the top ribbon or the center of the configuration canvas.

Enter a name for your entity type, and select **Add Entity Type**.

Note

Entity type names must be 1â26 characters, contain only alphanumeric characters, hyphens, and underscores, and start and end with an alphanumeric character.

The configuration canvas displays your new entity type, and the **Entity type configuration** pane appears.

In the properties tab, select **Add properties**.

You can create properties on entity types without binding data to them. Later, you can bind either static or time series data to these properties. This section shows that process. (Alternatively, you can go straight to the data binding step and add properties while binding data to them in a single operation. For detailed instructions on that process, see Data binding.)

Add a name, data type, and property type for each property. Select **Save** to view the saved properties in the properties tab.

Note

Property names can only be duplicated across entities for properties of the same type. For example, you can't have one entity type with a string ID property and another entity type with an integer ID property, but you can have two entity types that both have a string ID property.

Next, define your entity type **Key** using one or more properties modeled on the entity type. This value represents a unique identifier for each record of ingested data.

String and integer columns from your source data are available to select as the entity type key. Together, the columns you select uniquely identify a record.

This process is done once for each entity type.

Optionally, select a property to use as the **Instance display name** for all your instances in downstream experiences.

Bind data to the entity type to make it operational.

## Edit or delete an entity type

To delete an entity type that exists in your ontology (preview) item, hover over the entity type name in the **Entity types** pane and select **...** to open its options menu. Select **Delete entity type**.

You can edit and delete the name, key, or display name for an entity at any time.

You can also add, edit, or delete properties of an entity type at any time. Deleting a property removes it from the entity everywhere it's configured, including entity type key and relationship type configurations.

To add a new property,

Select an entity type to open the **Entity type configuration** pane.

In the **Properties** tab, select the **+** icon.

Fill property details when prompted.

To edit or delete a property,

Select an entity type to open the **Entity type configuration** pane.

In the **Properties** tab, select **...** next to the property name.

Select your preferred action from the options menu.

Note

Any updates in upstream data sources (like new rows) need to be manually refreshed before they're visible in the ontology item. For more information, see refresh the graph model.

## Supported property types

The following table lists the supported property types for data that can be bound to properties in ontology (preview).

Ontology property value type
Supported Lakehouse types
Supported Eventhouse types

integer
tinyint, smallint, bigint, integer, long, short
int, long

boolean
boolean
bool

datetime
datetime, date, timestamp
datetime

double
double, decimal, float
decimal, real

string
char, decimal(p, s), string, array, binary, binary16, byte, map, object, struct, timestampint64, timestamp_ntz
dynamic, string, guid, timespan

The following table shows supported source column value types that can be used for the timestamp selection in a time series binding.

Ontology configuration
Lakehouse and Eventhouse source column value type

Timestamp
datetime, date, timestamp

The following table shows supported property types that can be used as the entity type key.

Ontology configuration
Ontology property value type

Entity type key
string, integer

If your data contains other data types, perform ETL to convert the data to one of the supported types before bringing the data to ontology.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-03-31