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
					

				

			

		

	
					
# Ontology (preview) tutorial part 4: Create data agent

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Ontology (preview) integrates with Fabric data agent (preview) to let you ask questions in natural language, and get answers grounded in the ontology's definitions and bindings.

Important

This feature is in preview.

## Create data agent with ontology (preview) source

Follow these steps to create a new data agent that connects to your ontology (preview) item.

Go to your Fabric workspace. Use the **+ New item** button to create a new **Data agent (preview)** item named _RetailOntologyAgent_.

Tip

If you don't see the data agent item type, make sure that it's enabled in your tenant as described in the tutorial prerequisites.

The agent opens when it's ready. Select **Add a data source**.

Search for the _RetailSalesOntology_ item and select **Add**. Now your ontology is added as a source for the data agent.

When the agent is ready, the ontology and its entity types are visible in the Explorer.

## Provide agent instructions

Note

This step addresses a known issue affecting aggregation in queries.

Next, add a custom instruction to the agent.

Select **Agent instructions** from the menu ribbon.

At the bottom of the input box, add Support group by in GQL. This instruction enables better aggregation across ontology data.

The instruction is applied automatically. Optionally, close the **Agent instructions** tab.

## Query agent with natural language

Next, explore your ontology with natural language questions.

Start by entering these example prompts:

- _For each store, show any freezers operated by that store that ever had a humidity lower than 46 percent._

- _What is the top product by revenue across all stores?_

Notice that the responses reference entity types (_Store_, _Products_, _Freezer_) and their relationships, not just raw tables.

Tip

If you see errors that say there's no data while running the example queries, wait a few minutes to give the agent more time to initialize. Then, run the queries again.

Continue exploring the data agent by trying out some prompts of your own.

## Next steps

In this step, you explored your ontology by using natural language queries and answered business-level questions.

Next, continue to the tutorial conclusion.

					
		

	 
		

		

	
					
		
		
			
			
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