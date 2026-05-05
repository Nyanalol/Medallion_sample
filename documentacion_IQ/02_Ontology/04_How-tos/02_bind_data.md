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
					

				

			

		

	
					
# Data binding in ontology (preview)

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Data binding in ontology (preview) connects the schema of entity types, relationship types, and properties to concrete data sources that drive enterprise operations and analytics.

Important

This feature is in preview.

By using data binding, you can:

- Integrate data into a semantic layer without copying source data

- Enrich entity types with up-to-date contextual information from batch and real-time sources

- Provide a semantic backbone for AI agents and automation to support reasoning, decision-making, and actions across the enterprise

## Prerequisites

Before binding data to your ontology, make sure you have the following prerequisites:

- A Fabric workspace with a Microsoft Fabric-enabled capacity.

- **Ontology item (preview)** enabled on your Fabric tenant.

- An ontology (preview) item with entity types created.
Data that you prepared according to these guidelines:

- The data is organized, and has gone through any necessary ETL required by your business.

- The data contains all required information for it to be modeled. For more information, see Core concept: Data binding.

- The data is in Microsoft Fabricâstatic data in OneLake, time series data in OneLake or an eventhouse.

- Time series data is in _columnar_ format, meaning it's represented in a table with a row for each timestamped observation. Columns contain time stamps and property values (like temperature or pressure).

- Lakehouse tables conform to ontology (preview)'s data binding limitations: They are **managed**, do not have OneLake security enabled, and do not have column mapping enabled.

## Key concepts

Data binding uses the following ontology (preview) concepts. For definitions of these terms, see the Ontology (preview) glossary.

- _Entity type_

- _Entity type key_

- _Entity instance_

- _Property_

## Add static data

First, bind static data to entity types in your ontology (preview) item. Create static data bindings before creating time series data bindings.

Select the entity to which you want to bind data in the **Entity Types** pane. This selection opens the **Entity type configuration** pane for the entity type. In the **Bindings** tab, select **Add data to entity type**.

The data source selection appears. Select a OneLake data source that contains the data to be bound to the entity. Select **Connect**.

When the data source loads, choose a specific table from the data source to use as the data binding source table. Select **Next**.

For the **Binding type**, select **Static**. Select only one type per data binding. An example of static data is a table with descriptive attributes about stores, like the store ID value, square footage, and location.

Under **Bind your properties**, select the source columns from the source table that you want to model on your entity type. Then, enter a name for each property that shows on the entity type. The name can be the same as the source column name or something different.

Custom property names must be 1â26 characters, contain only alphanumeric characters, hyphens, and underscores, and start and end with an alphanumeric character. Property names must be unique across all entity types.

If you already created properties on your entity type, you can select their names in the **Property name** column to map data to them. When you select an existing property name, the **Source column** options are grouped into two sections: Available and Unavailable. Available columns are columns in your source table that match the declared data type of the property you're trying to match. Unavailable columns are ones that don't match the type, so they can't be bound to that property.

Select **Save** to save your static data binding.

Verify the bindings by viewing a summary of your data bindings in the **Bindings** tab, and a summary of properties (including properties added during data binding) in the **Properties** tab.

Next, set the **Key**. The entity type key value represents a unique identifier for each record of ingested data.

String and integer columns from your source data are available to select as the entity type key. Together, the columns you select uniquely identify a record.

This process is done once for each entity type.

Optionally, select a property modeled on your entity type to use as the **Instance display name**. This step provides a friendly name for entity instances in downstream experiences.

## Add time series data (after binding static data)

Next, bind time series data to entity types in your ontology (preview) item.

Important

Before you bind time series data to an entity type, make sure your static data binding is complete. The entity type must have at least one property with static data bound to it that you can use as the key to contextualize your time series data. This static data must exactly match a column in your time series data.

Follow the steps described earlier for static data to start adding data to the entity type and select your data source. You can select a source from OneLake or Eventhouse.

For the **Binding type**, select **Timeseries** (time series). Select the **Source data timestamp column** that contains the timestamp values.

Under **Bind your properties**, you see a **Static** section and a **Timeseries** (time series) section.

In the **Static** section, bind source columns to the properties that are defined as the entity type key. If you need to update the key, you can add more static data now by selecting **+ Add static property**.

In the **Timeseries** (time series) section, continue defining properties by selecting source columns and entering names for each one.

Select **Save** to save your time series data binding.

Verify the bindings by viewing an updated summary of your data bindings in the **Bindings** tab, and a summary of properties (including properties added during the recent data binding) in the **Properties** tab.

## Edit or delete data binding

You can edit or delete data bindings in the **Entity type configuration** pane, in the **Bindings** tab.

Next to the data binding name, select **...** to open its options. From there, you can edit properties or delete the data binding.

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

## Limitations and troubleshooting

Data binding has the following limitations:

- You can't use lakehouses with OneLake security enabled as data sources for bindings. If a lakehouse has OneLake security enabled, you can't use it as a data source in ontology.

- Ontology only supports **managed** lakehouse tables (located in the same OneLake directory as the lakehouse), not **external** tables that show in the lakehouse but reside in a different location.

- Changing the lakehouse table name after mappings are created may result in problems accessing data in the preview experience.

- The ontology graph does not support delta tables with column mapping enabled. Column mapping can be enabled manually, or is enabled automatically on lakehouse tables where column names have certain special characters, including ,, ;, {}, (), \n, \t, =, and space. It also happens automatically on the delta tables that store data for import mode semantic model tables.
Each entity type supports one **static** data binding. You can't combine static data from multiple sources for a single entity type.

- You must use OneLake-backed sources for static data.

- Entity types **do** support bindings from multiple **time series** sources. You can bind time series data from both eventhouse and lakehouse sources.

### Troubleshooting

For troubleshooting tips related to data binding, see Troubleshoot ontology (preview).

					
		

	 
		

		

	
					
		
		
			
			
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