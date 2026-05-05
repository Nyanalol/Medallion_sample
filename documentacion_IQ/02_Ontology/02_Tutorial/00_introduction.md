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
					

				

			

		

	
					
# Ontology (preview) tutorial part 0: Introduction and environment setup

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					This tutorial shows how to create your first ontology (preview) in Microsoft Fabric, either by generating it from an existing **Power BI semantic model** or by **building it from your OneLake data**. Then, enrich the ontology with live operational data, and explore it with both graph preview and natural-language (NL) queries through Fabric data agent.

Important

This feature is in preview.

The example scenario for this tutorial is a fictional company called Lakeshore Retail. Lakeshore is a retail ice cream seller that keeps data on sales and freezer streaming data. In the tutorial, you generate entity types like _Store_, _Products_, and _SaleEvent_. You bind streaming data like _freezer temperature_ from Eventhouse, and answer questions like: "What is the top product by revenue across all stores?"

## Choose ontology creation method

This tutorial contains two options for setting up the ontology (preview) item. Choose from one of the following methods:

- **Generate from semantic model**: With these instructions, you use an existing semantic model to automatically generate an ontology that you can build upon and extend. Choose this option to see how to work with ontology when you already have a well-structured Power BI semantic model that represents your business domain.

- **Build directly from OneLake**: With these instructions, you create the ontology manually by binding properties directly from OneLake. Choose this option to see how to build an ontology when you don't have a semantic model, or want full control over ontology design from the start.

Choose your preferred scenario by using the links above (will reload the page) or the selector at the beginning of the article.

## Prerequisites

A workspace with a Microsoft Fabric-enabled capacity. Use this workspace for all resources you create in the tutorial.

Required settings for ontology (preview) and data agent must be enabled on your tenant. A Fabric administrator should enable the following settings in the tenant settings page of the admin portal:

- _Enable Ontology item (preview)_

- _User can create Graph (preview)_

- _Users can create and share Data agent item types (preview)_

- _Users can use Copilot and other features powered by Azure OpenAI_

- _Data sent to Azure OpenAI can be processed outside your capacity's geographic region, compliance boundary, or national cloud instance_

- _Data sent to Azure OpenAI can be stored outside your capacity's geographic region, compliance boundary, or national cloud instance_

For more information about these prerequisites, see Ontology (preview) required tenant settings.

A workspace with a Microsoft Fabric-enabled capacity. Use this workspace for all resources you create in the tutorial.

Required settings for ontology (preview) and data agent must be enabled on your tenant. A Fabric administrator should enable the following settings in the tenant settings page of the admin portal:

- _Enable Ontology item (preview)_

- _User can create Graph (preview)_

- _Users can create and share Data agent item types (preview)_

- _Users can use Copilot and other features powered by Azure OpenAI_

- _Data sent to Azure OpenAI can be processed outside your capacity's geographic region, compliance boundary, or national cloud instance_

- _Data sent to Azure OpenAI can be stored outside your capacity's geographic region, compliance boundary, or national cloud instance_

For more information about these prerequisites, see Ontology (preview) required tenant settings.

## Download sample data

Download the contents of this GitHub folder: Ontology samples.

It contains the following sample CSV files. The data contains static entity details about the Lakeshore Retail scenario and streaming data from its freezers:

- _DimStore.csv_

- _DimProducts.csv_

- _FactSales.csv_

- _Freezer.csv_

- _FreezerTelemetry.csv_

## Prepare the lakehouse

Follow these steps to prepare the sample tutorial data in a lakehouse.

Start in your Fabric workspace. Use the **+ New item** button to create a new **Lakehouse** item called _OntologyDataLH_.

The new lakehouse opens when it's ready. From the lakehouse ribbon, select **Get data > Upload files**.

Select four of the sample CSV files that you downloaded earlier to upload them to your lakehouse. These files contain entity details about business objects in the Lakeshore Retail scenario.

- _DimProducts.csv_

- _DimStore.csv_

- _FactSales.csv_

- _Freezer.csv_

Note

Don't upload _FreezerTelemetry.csv_ to the lakehouse. You upload this file to Eventhouse in a later step.

Expand the **Files** folder in the Explorer to view your uploaded files. Next, load each file to a delta table.

For each file, select **...** next to the file name, then **Load to Tables > New table**.

Continue through the table creation dialogue, keeping the default settings.

The lakehouse looks like the following image when you're done. The default table names reflect the file names in all lowercase.

## Prepare the Power BI semantic model

This section prepares you to generate an ontology from a semantic model. If you're not following the semantic model scenario and you want to build the ontology manually from OneLake, use the selector at the beginning of the article to change to the OneLake scenario.

From the lakehouse ribbon, select **New semantic model**.

In the **New semantic model** pane, set the following details:

**Direct Lake semantic model name**: _RetailSalesModel_

**Workspace**: Your tutorial workspace is chosen by default.

**Select or deselect tables for the semantic model.** Select three tables:

- _dimproducts_

- _dimstore_

- _factsales_

Note

Don't select the _freezer_ table. You create this entity manually in a later step.

Select **Confirm**.

Open the semantic model in **Editing** mode when it's ready. From the ribbon, select **Manage relationships**.

In the **Manage relationships** pane, use the **+ New relationship** button to create two relationships with the following details.

From table
To table
Cardinality
Cross-filter direction
Make this relationship active?

_factsales_, select StoreId
_dimstore_, select StoreId
Many to one (*:1)
Single
Yes

_factsales_, select ProductId
_dimproducts_, select ProductId
Many to one (*:1)
Single
Yes

The relationships look like this when you're done:

Select **Close**.

Now the semantic model is ready to import into an ontology.

## Prepare the eventhouse

Follow these steps to upload the device streaming data file to a KQL database in Eventhouse.

In your Fabric workspace, use the **+ New item** button to create a new eventhouse called _TelemetryDataEH_. A default KQL database is created with the same name.

The eventhouse opens when it's ready. Open the KQL database by selecting its name in the explorer.

Next, create a new table called _FreezerTelemetry_ that uses the _FreezerTelemetry.csv_ sample file as a source.

In the menu ribbon, select **Get data > Local file**.

Create a **New table** called _FreezerTelemetry_ and browse for the _FreezerTelemetry.csv_ file that you downloaded earlier.

Continue through the table creation dialogue, keeping the default settings.

When you're done, the KQL database shows the _FreezerTelemetry_ table with data:

## Next steps

Now your sample scenario is set up in Fabric. Next, create an ontology (preview) item by generating it automatically from a semantic model or building it manually from the OneLake data source.

Both options are available in the next step, Create an ontology.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-02-05