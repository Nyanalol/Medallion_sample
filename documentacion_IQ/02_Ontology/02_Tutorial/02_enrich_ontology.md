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
					

				

			

		

	
					
# Ontology (preview) tutorial part 2: Enrich the ontology with additional data

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					In this tutorial step, you enrich your ontology by adding a new _Freezer_ entity type. This entity type adds more domain context and introduces properties for time series data, which reflects live operational information.

Important

This feature is in preview.

First, you create the new entity type and define properties without binding them to specific data. Then, you bind the static data to those properties in a separate step. Later, you add time series data to the entity type by creating new properties and binding time series data to them in a single data binding operation.

Note

For both static and time series data, you can create properties without binding data and bind data later, or create properties and bind data to them in a single step. This article demonstrates both approaches.

After you complete data binding for the freezer entity, you create a new relationship type to represent the connection between a store and its freezers.

## Create Freezer entity type and add properties

Follow these steps to create the _Freezer_ entity type and add properties to it. The properties aren't bound to data yet.

Select **Add entity type** from the top ribbon. Enter _Freezer_ for the name of your entity type and select **Add Entity Type**.

In the **Entity type configuration** pane, go to the **Properties** tab. Select **Add properties**.

Add the following properties and select **Save**.

Name
Value type
Property type

FreezerId
String
Static

Model
String
Static

minSafeTempC
Double
Static

StoreId
String
Static

Note

Property names must be unique across all entity types.

Here's what it looks like before saving:

Select **Add entity type key**.

Select FreezerId as the key value.

## Bind static data to properties

Next, bind static data to the properties you created on the _Freezer_ entity type.

In the **Entity type configuration** pane, go to the **Bindings** tab. Select **Add data to entity type**.

For your data source, select the _OntologyDataLH_ lakehouse and the _freezer_ table. Select **Next**.

Configure a static data binding for the properties.

- For **Binding type**, use the default selection of **Static**.

- Under **Bind your properties**, the properties you created populate automatically with links to matching columns from the _freezer_ table.

- Select **Save**.

Now the _Freezer_ entity has static data bound to it.

## Bind time series data to additional properties

Next, add time series data on the _Freezer_ entity, by creating new properties and binding time series data to them in a single data binding operation.

In the **Entity type configuration** pane's **Bindings** tab, select **Add data to entity type**.

For your data source, select the _TelemetryDataEH_ eventhouse and the _FreezerTelemetry_ table. Select **Next**.

Configure a time series data binding.

For **Binding type**, keep the default selection of **Timeseries** (time series). For **Source data timestamp column**, select timestamp.

Under **Bind your properties > Static**, two source data columns populate that match static properties already defined on the entity. Keep them as they are.

Under **Bind your properties > Timeseries** (time series), the time series columns from the _FreezerTelemetry_ table populate automatically with matching property names for the _Freezer_ entity type. Keep the default selections.

Select **Save**.

Now the _Freezer_ entity has two data bindings: one with static data from the _freezer_ lakehouse table and one with streaming data from the _FreezerTelemetry_ eventhouse table.

## Add relationship type

Finally, create a new relationship type to represent the connection between a store and its freezers.

### Create Store operates Freezer

Select **Add relationship** from the menu ribbon.

Enter the following relationship type details and select **Add relationship type**.

- **Relationship type name**: _operates_

- **Source entity type**: _Store_

- **Target entity type**: _Freezer_

The **Relationship configuration** pane opens, where you can configure additional information. Enter the following details (some fields become visible based on other selections) and select **Create**.

- **Source data**: Select your tutorial workspace, the _OntologyDataLH_ lakehouse, and the _freezer_ table. This table in the source data can link _Store_ and _Freezer_ entities together, because it contains identifying information for both entity types. Each row in this table references a store and a freezer by ID.

- **Source entity type > Source column**: Select StoreId. This setting specifies the column in the relationship source data table (_freezer >_ StoreId) whose values match the key property defined on the _Store_ entity (_dimstore >_ StoreId). In the tutorial data, the column name is the same in both tables.

- **Target entity type > Source column**: Select FreezerId. This setting specifies the column in the relationship source data table whose values match the key property defined on the _Freezer_ entity. In this case, the relationship data source and the entity data source both use the _freezer_ table, so you're selecting the same column.

Important

Make sure to select the correct source columns that match the entity type key properties.

Here's what the relationship configuration looks like:

## Next steps

Now your ontology includes a _Freezer_ entity type that is connected in the ontology and bound to time series data.

Next, continue to Preview the ontology.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-01-15