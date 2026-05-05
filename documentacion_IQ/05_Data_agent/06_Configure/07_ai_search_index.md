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
					

				

			

		

	
					
# Connect Data Agents to your Azure Search Index in Microsoft Foundry

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Data Agent creators can now connect their agents directly to Azure AI Search indexes built in Microsoft Foundry, unlocking powerful unstructured data scenarios. Using the resource URL, you can securely connect to your indexâData Agents fully respect the permissions of your Azure AI resources. In Foundry, you can craft rich AI Search indexes with custom enrichments, preprocessing logic, and tailored schemas for PDFs, text files, and more. Once connected, Data Agents can reason over that unstructured content and even join insights from your index with your structured data sources, giving you a unified, intelligent view across all your data.

Important

This feature is in preview.

## Prerequisites

- A paid F2 or higher Fabric capacity, or a Power BI Premium per capacity (P1 or higher) capacity with Microsoft Fabric enabled.

- Enable cross-geo processing and cross-geo storing for AI based on requirements explained in Fabric data agent tenant settings.

- At least one of these data sources, with data: A warehouse, a lakehouse, a Power BI semantic model, a KQL database, a mirrored database, or an ontology. You must have read access to the data source.

## Set up your Azure AI Search resource

To connect your Data Agent to an Azure AI Search index, first ensure your search resource is properly configured.

**Create an Azure AI Search index.**

Use the Azure AI Search quickstart to create an index. You can start with sample data or use your own.

**Enable role-based access control.**

Turn on role-based authentication for your search service and index. This permission allows the Data Agent to securely access your resource using the identity of the asking user.

**Assign the required roles.**

Confirm that your user or service principal has the following roles on the Azure AI Search resource:

- Search Index Data Contributor

- Search Index Data Reader

These permissions ensure the Data Agent can read your index and retrieve relevant content.

**Retrieve the resource URL.**

Copy the resource URL for your Azure AI Search service. You need this value when adding the connection in your Data Agent configuration.

Tip

The Data Agent can include citations so you can see which documents were used to generate a response. Citations appear in the user experience only if at least one of the following fields is present (case-sensitive): url, sourceUrl, filePath, path, or folderPath.

To ensure citations display correctly in the Data Agent, you may want to include one of these fields in your index schema.

## Connect index to data agent

Go to the **Data** tab and select **Add AI Search Index**.

Provide your **resource URL** when prompted.

Ask a question such as **"Tell me more about the Uptown Chic hotel"** to query your index.

View the **documents used** to generate the answer through the reasoning steps.

Note

When a user asks a question, the Data Agent sends the user's identity to the Azure AI Search index. This permission ensures that access controls and permissions defined on the index are respected.

## Configure the index in your Data Agent

You can configure how your Data Agent uses your AI Search index. You can provide context about the source, give instructions on which fields to reference, and adjust parameters that control how much context is returned.

### Context

Use this field to describe your AI Search index. Include details about what the index contains, key fields, and how it should be used. This helps the agent correctly route questions to the appropriate index.

### Configuration

Use these settings to control how your Data Agent queries and interprets results from your AI Search index:

Setting
Description

**Display Name**
The name displayed for this index within the Data Agent.

**Search Type**
Choose from the available search options supported by your index (for example: full-text, hybrid, or semantic search).

**Number of Documents**
Select how many documents the agent should retrieve per query. The recommended range is **3â20**. Higher values may return more context but can increase processing time.

### Agent Instructions

Use the agent instructions to guide how the agent processes and composes the final answer. The search step retrieves the relevant document chunks, but the instructions tell the agent how to interpret that information, review it, and structure the response.

## Next steps

- Data agent configurations

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-02-20