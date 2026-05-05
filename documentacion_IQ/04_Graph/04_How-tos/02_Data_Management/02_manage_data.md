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
					

				

			

		

	
					
# Manage data in graph in Microsoft Fabric

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

This article shows you how to save your graph model, refresh graph data, and configure scheduled refresh in Microsoft Fabric.

## Save your graph model

When you select **Save** in the graph model editor, graph in Microsoft Fabric performs two operations:

- **Persists your graph model** â Saves the current configuration, including node types, edge types, and column mappings.

- **Triggers data ingestion** â Ingests data from the underlying lakehouse tables and constructs the queryable graph based on the updated model.

Because save and ingestion are a single operation, every save refreshes your graph data. Save your model whenever you add or modify node types, edge types, or mappings.

## Refresh graph data manually

If the data in your underlying lakehouse changes but your graph model stays the same, you can manually pull in the latest data by selecting **Save** in the graph model editor. Even when the model configuration didn't change, the save operation reingests data from OneLake and rebuilds the queryable graph.

## Configure scheduled refresh

If your underlying lakehouse receives updated data regularly, you can configure scheduled refreshes so the graph automatically stays in sync without manual intervention.

To configure scheduled refresh in a shared workspace:

In Microsoft Fabric, select **Workspaces** in the navigation pane.

Select the workspace that contains your graph.

Locate your graph item in the workspace content list.

Select the **...** (More options) menu that appears next to the graph item when you hover over it.

Select **Schedule**.

Select **Add schedule** in the **Schedules** menu.

Configure the refresh frequency to match how often your lakehouse data updates (for example, every _n_ hours).

Select **Save** to save the schedule.

You can schedule refreshes to run by the minute, hourly, daily, weekly, or monthly. The following image shows an example of a refresh schedule configured to run hourly:

To edit or delete a scheduled refresh, select the **Edit** option in the **Schedules** menu.

Note

Scheduled refresh is available for graphs in shared workspaces. The schedule option isn't available in **My Workspace**.

## Related content

- Design a graph schema

- Graph overview

- Monitor graph status

- Troubleshooting and FAQ

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-15