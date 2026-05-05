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
					

				

			

		

	
					
# Ontology (preview) tutorial part 1: Create an ontology

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					In this step of the tutorial, you generate a new ontology (preview) item that represents the Lakeshore Retail scenario.

Important

This feature is in preview.

## Choose ontology creation method

This tutorial contains two options for setting up the ontology (preview) item. Choose from one of the following methods:

- **Generate from semantic model**: With these instructions, you use an existing semantic model to automatically generate an ontology that you can build upon and extend. Choose this option to see how to work with ontology when you already have a well-structured Power BI semantic model that represents your business domain.

- **Build directly from OneLake**: With these instructions, you create the ontology manually by binding properties directly from OneLake. Choose this option to see how to build an ontology when you don't have a semantic model, or want full control over ontology design from the start.

Choose your preferred scenario by using the links above (will reload the page) or the selector at the beginning of the article.

## Generating an ontology from a semantic model

A semantic model in Fabric is a logical description of a domain, like a business. Semantic models hold information about your data and the relationships among that data. You can create semantic models from lakehouse tables. When your data is represented in a semantic model, you can generate an ontology directly from that semantic model. For more information, see Generating an ontology (preview) from a semantic model.

In this tutorial step, you generate an ontology from the sample semantic model that you set up in the previous step. Then, you verify and complete the ontology.

## Generate ontology

Go to the _RetailSalesModel_ semantic model in Fabric. From the top ribbon, select **Generate Ontology**.

Select your **Workspace** and enter _RetailSalesOntology_ for the **Name**. Select **Create**.

Tip

Ontology names can include numbers, letters, and underscores. Don't use spaces or dashes.

The ontology (preview) item opens when it's ready.

Note

If you see an error that Fabric is unable to create the ontology (preview) item, make sure that all the required settings are enabled for your tenant, as described in the Tutorial prerequisites.

Next, review the entity types, data bindings, and relationships that the semantic model generates. In the following sections, you make a few edits to complete the ontology configuration, and verify that generated items are correct.

## Verify entity types

Entity types represent types of objects in a business. The **Entity Types** pane lists all three entity types in the ontology, named after the data tables:

- _factsales_

- _dimstore_

- _dimproducts_

Tip

If you don't see any entities in the ontology, make sure your semantic model is published, the tables in the semantic model are visible (not hidden), and relationships are defined. To revisit the setup steps for the semantic model, see Prepare the Power BI Semantic Model .

### Rename entity types

Follow these steps to rename each entity type to a friendlier name.

Select the entity type.

In the **Entity type configuration** pane, select the edit icon next to the **Entity type name**.

Enter the new name from the following table.

Old name
New name

_factsales_
_SaleEvent_

_dimstore_
_Store_

_dimproducts_
_Products_ 

Note: Make sure to use the plural form _Products_, to avoid conflict with the GQL reserved word PRODUCT.

When you finish renaming all the entity types, they look like this (they might be listed in a different order).

## Verify properties

To view the properties of an entity type, select it from the **Entity types** pane. This action opens the **Entity type configuration** pane, where the entity type's properties are listed on the **Properties** tab.

Verify that each entity type has the properties described in the following table.

Entity type
Key
Properties

_SaleEvent_

ProductId, RevenueUSD, SaleDate, SaleId, StoreId, Units

_Store_
StoreId
City, Region, Latitude, Longitude, StoreId, StoreName

_Products_
ProductId
Brand, Category, ProductId, ProductName, Subcategory

Here's an example of what entity type properties look like.

### Add SaleEvent key

Each entity type has an entity type key that represents a unique identifier for each record of ingested data. You can select string and integer columns from your source data as the entity type key. Together, the columns you select uniquely identify a record.

The _SaleEvent_ entity type doesn't have a key that was imported from the source data, so you need to add it manually.

Open the _SaleEvent_ entity type.

In the **Entity type configuration** pane, select **Add entity type key**.

Select SaleId.

When you save the key, it looks like this:

## Verify bindings

To view data bindings for an entity type, look in the **Entity type configuration** pane and switch to the **Bindings** tab. Data bindings connect an entity type to a data source so that you can create instances of the entity type and populate them with data.

Verify that each entity type is successfully bound to the data sources described in the following table.

Entity type
Source table

_SaleEvent_
_factsales_

_Store_
_dimstore_

_Products_
_dimproducts_

Here's an example of what the bindings look like.

## Verify and configure relationship types

Finally, verify the relationship types between entity types. Relationship types represent how entity types are related to each other in a business context. The relationship types that the import process brings in from the semantic model are defined, but not fully configured and bound to data.

Select the _SaleEvent_ entity type to display it and its relationship types on the configuration canvas.

Select each of the relationship types and update its details to match the following table.

Old name
New name
Source data table
Source entity type
Target entity type

_factsales_has_dimproducts_
_sold_
Tutorial workspace > _OntologyDataLH_ > _factsales_ 

This table in the source data can link _Products_ and _SaleEvent_ entities together, because it contains identifying information for both entity types. Each row in this table references a product and a sale event by ID.
_SaleEvent_ 

For **Source column**, select SaleId. 

This setting specifies the column in the relationship source data table whose values match the key property defined on the _SaleEvent_ entity. In this case, the relationship data source and the entity data source both use the _factsales_ table, so you're selecting the same column.
_Products_ 

For **Source column**, select ProductId. 

This setting specifies the column in the relationship source data table (_factsales >_ ProductId) whose values match the key property defined on the _Products_ entity (_dimproducts >_ ProductId). In the tutorial data, the column name is the same in both tables.

_factsales_has_dimstore_
_from_
Tutorial workspace > _OntologyDataLH_ > _factsales_ 

This table in the source data can link _Store_ and _SaleEvent_ entities together, because it contains identifying information for both entity types. Each row in this table references a store and a sale event by ID.
_SaleEvent_ 

For **Source column**, select SaleId. 

This setting specifies the column in the relationship source data table whose values match the key property defined on the _SaleEvent_ entity. In this case, the relationship data source and the entity data source both use the _factsales_ table, so you're selecting the same column.
_Store_  

For **Source column**, select StoreId. 

This setting specifies the column in the relationship source data table (_factsales >_ StoreId) whose values match the key property defined on the _Store_ entity (_dimstore >_  StoreId). In the tutorial data, the column name is the same in both tables.

Here's an example of what an updated relationship type looks like.

## Building an ontology from OneLake

When your data is stored in OneLake, you can build an ontology from the OneLake data tables.

The manual process involves these steps:

- Create an **ontology item**

- Create **entity types**
Create **data bindings** for the entity types

- Select **entity type keys**

- Create **relationship types** between entity types, and bind them to source data

In this tutorial step, you build an ontology from the sample OneLake data that you set up in the previous step.

## Create ontology (preview) item

In your Fabric workspace, select **+ New item**. Search for and select the **Ontology (preview)** item.

Enter _RetailSalesOntology_ for the **Name** of your ontology and select **Create**.

Tip

Ontology names can include numbers, letters, and underscores. Don't use spaces or dashes.

The ontology opens when it's ready.

Note

If you see an error that Fabric is unable to create the ontology (preview) item, make sure that all the required settings are enabled for your tenant, as described in the Tutorial prerequisites.

Next, create entity types, data bindings, and relationships based on data from your lakehouse tables.

## Create entity types and data bindings

First, create entity types. Entity types represent types of objects in a business. This step has three entity types: _Store_, _Products_, and _SaleEvent_. After you create the entity types, create their properties by binding source data columns from the _OntologyDataLH_ lakehouse tables.

### Add first entity type (Store)

From the top ribbon or the center of the configuration canvas, select **Add entity type**.

Enter _Store_ for the name of your entity type and select **Add Entity Type**.

The _Store_ entity type is added to the configuration canvas, and the **Entity type configuration** pane is visible.

To create entities from existing source data, switch to the **Bindings** tab. Select **Add data to entity type**.

Next, choose your data source.

- Select the _OntologyDataLH_ lakehouse and select **Connect**.

- Select the _dimstore_ table and select **Next**.

Configure a static data binding for the following properties.

- For **Binding type**, don't change the default selection of **Static**.

- Under **Bind your properties**, the columns from the _dimstore_ table populate automatically. The **Source column** side lists their names in the source data, and the **Property name** side lists their corresponding property names on the _Store_ entity type within ontology. Don't change the default property names, which match the source column names.

- Select **Save**.

Back in the **Entity type configuration** pane, the data binding is visible. Next, select **Add entity type key**.

Select **StoreId** as the key property and select **Save**.

Now the _Store_ entity type is ready. Continue to the next section to create the remaining entity types.

### Add other entity types (Products, SaleEvent)

Follow the same steps that you used for the _Store_ entity type to create the entity types described in the following table. Each entity has a static data binding with the default columns from its source table.

Entity type name
Source table in _OntologyDataLH_
Entity type key

_Products_ 

Note: Use the plural form _Products_ to avoid conflict with the GQL reserved word PRODUCT.
_dimproducts_
ProductId

_SaleEvent_
_factsales_
SaleId

When you're done, you see these entity types listed in the **Entity Types** pane.

## Create relationship types

Next, create relationship types between the entity types to represent contextual connections in your data.

### SaleEvent from Store

Select **Add relationship** from the menu ribbon.

Enter the following relationship type details and select **Add relationship type**.

- **Relationship type name**: _from_

- **Source entity type**: _SaleEvent_

- **Target entity type**: _Store_

The **Relationship configuration** pane opens, where you can configure additional information. Enter the following details (some fields become visible based on other selections) and select **Create**.

- **Source data**: Select your tutorial workspace, the _OntologyDataLH_ lakehouse, and the _factsales_ table. This table in the source data can link _Store_ and _SaleEvent_ entities together, because it contains identifying information for both entity types. Each row in this table references a store and a sale event by ID.

- **Source entity type > Source column**: Select SaleId. This setting specifies the column in the relationship source data table whose values match the key property defined on the _SaleEvent_ entity. In this case, the relationship data source and the entity data source both use the _factsales_ table, so you're selecting the same column.

- **Target entity type > Source column**: Select StoreId. This setting specifies the column in the relationship source data table (_factsales >_ StoreId) whose values match the key property defined on the _Store_ entity (_dimstore >_ StoreId). In the tutorial data, the column name is the same in both tables.

Now the first relationship is created, and bound to data in your source table. Continue to the next section to create another relationship type.

### SaleEvent sold Products

Follow the same steps that you used for the first relationship type to create the relationship type described in the following table.

Relationship type name
Source data table
Source entity type
Target entity type

_sold_
Tutorial workspace > _OntologyDataLH > factsales_
_SaleEvent_

For **Source column**, select SaleId.
_Products_ 

For **Source column**, select ProductId.

When you're done, you have two relationships from the _SaleEvent_ entity type. To see the relationships, select the **SaleEvent** entity type from the **Entity Types** pane. You see its relationships on the configuration canvas.

## Next steps

In this step, you created an ontology (preview) item and populated it with entity types, their properties, and relationship types between them. Next, enrich the entities further by adding a _Freezer_ entity that's bound to both static and time series data.

Next, continue to Enrich the ontology with additional data.

					
		

	 
		

		

	
					
		
		
			
			
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
		2025-12-19