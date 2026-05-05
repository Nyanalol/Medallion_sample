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
					

				

			

		

	
					
# Consume a Fabric data agent from Copilot in Power BI (preview)

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					By using Copilot in Power BI, you can ask natural language questions while viewing reports and get answers from items you can access across Microsoft Fabric. Use Copilot from the Copilot pane or the standalone Copilot experience; this feature doesn't add a visual to the report canvas. Copilot helps you stay focused on insight extraction without switching between Microsoft Fabric items.

Fabric data agents integrate seamlessly across the Microsoft ecosystem, enabling consumption from Copilot in Power BI, Microsoft 365 Copilot, Microsoft Copilot Studio, and through Model Context Protocol (MCP) server endpoints.

Important

This feature is in preview.

## Prerequisites

- General Copilot requirements

- Open a report in the Power BI service or Power BI Desktop and open the Copilot pane, or access the standalone Copilot experience from the Copilot icon in the left navigation or from the Power BI Home page

You can consume a Microsoft Fabric data agent directly within Copilot in Power BI in two ways:

## Use Copilot search to find and invoke a Fabric data agent

When you ask a question in Copilot in Power BI, it

scans all available items you have permissions to access

- Power BI semantic models

- Power BI reports

- Fabric data agents

- ranks and suggests the most relevant items based on your query

- offers suggested items to help you choose the most appropriate answer source

The following screenshot shows answers a Copilot in Power BI query might return:

The following screenshot shows data that a Copilot in Power BI query might return:

## Directly add a Fabric data agent

If you know which data agent to use, add that data agent to the Copilot session. Select **Add items for better results**, and then select **Data agents**. The OneLake catalog opens and lists all data agents you have permission to access. Copilot uses the selected data agent for relevant follow-up questions, as shown in the following screenshot:

After you select an item, you attach that item to your question. Then, Copilot in Power BI uses the added item to retrieve the answer to the question, as shown in the following screenshot:

Copilot might not return a useful answer to a question outside the scope of the data agent you added. When you change topics, tell Copilot so it can perform a new search across these resources: Power BI semantic models, Power BI reports, and Fabric data agents.

## Interaction flow with a Fabric data agent

When you select a Fabric data agent, Copilot in Power BI proceeds with these steps to retrieve an answer:

- Rephrase the question: Copilot in Power BI might rephrase a question to fit the context or improve clarity, based on the conversation.

- Send the query: Copilot in Power BI sends the question to the selected Fabric data agent.

- Fabric data agent answer retrieval: The data agent identifies the most relevant data source (lakehouse, warehouse, semantic model, KQL database, ontology, or Azure AI Search index) and queries that data source. Data security protocols, such as row-level security (RLS) and column-level security (CLS), are enforced based on user permissions.

- Response delivery: The Fabric data agent sends the answer back to Copilot in Power BI.

- Final user presentation: Copilot in Power BI presents the answer directly to the user in the conversation interface.

## Related content

- Data agent concept

- Data agent end-to-end tutorial

- Fabric data agent sharing

- Consume Fabric data agent in Microsoft 365 Copilot

- Consume Fabric data agent in Microsoft Copilot Studio

- Standalone Copilot experience in Power BI

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-02-03