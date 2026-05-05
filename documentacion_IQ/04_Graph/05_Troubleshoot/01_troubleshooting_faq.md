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
					

				

			

		

	
					
# Troubleshooting and FAQ for graph in Microsoft Fabric

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

This article provides troubleshooting guidance and answers to frequently asked questions about graph in Microsoft Fabric. For known limitations that might impact your experience, see Current limitations of graph.

## Graph model disappears or becomes empty when switching tabs

If your graph model disappears or shows an empty canvas when you switch between tabs or windows:

- Save your model before switching tabs or windows.

- If the graph disappears, close the tab and refresh the browser.

- Don't open multiple graph objects at the same time.

## "Failed to load graph model" error in queryset view

This error typically means the queryable graph isn't ready yet. This situation is different from having no model defined.

- Wait a moment and refresh the page.

- Verify that your graph model is saved and processed.

- Check that your graph model contains at least one node and edge definition.

## Querysets show errors or appear corrupted

If you encounter binding errors or corrupted querysets:

- Perform a full browser refresh (not just the tab).

- Avoid clicking **Create new queryset** immediately after saving. Wait a few seconds for the queryable graph to be ready.

- If the filter window was open when you switched tabs, close and reopen the queryset after refreshing.

Note

Queryset corruption can affect all querysets in your workspace until you perform a full browser refresh.

## Queryset doesn't show recent model changes

After updating a graph model, the queryset's underlying queryable graph isn't immediately updated. A new snapshot must be generated before changes appear in the queryset. Save your model and wait for the queryable graph to be ready before creating or refreshing a queryset.

Currently, there's no UI option to manually refresh a queryset's connection to an updated model. After saving your model changes, create a new queryset to see the updated nodes and edges.

## FAQ

### Can I create a node from a column in an existing table?

Yes, you can create a separate node type from any column in your table. For each of these node types, delete properties that you don't need in queries or analysis, because excessive properties make your graph harder to maintain and use.

You can also use that same table as the edge mapping table for edge types connected to these node types.

### How do I change which property appears as the node label?

By default, nodes display their ID as the label. To change the display label:

- Open the query view.

- On the right side, find the **Components** panel.

- Select the ellipses (...) next to the node type.

- Choose the property you want to appear as the node label.

## Best practices

- **Save frequently**: Save your graph model before switching tabs, windows, or creating querysets.

- **Wait after saving**: Allow a few seconds after saving before creating new querysets.

- **One graph at a time**: Avoid having multiple graph objects open simultaneously to reduce the chance of UI problems.

- **Refresh on errors**: If you encounter unexpected errors, perform a full browser refresh to reset the workspace state.

## Related content

- What is graph in Microsoft Fabric?

- Quickstart guide for graph in Microsoft Fabric

- Optimize GQL query performance in graph

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-03-13