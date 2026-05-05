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
					

				

			

		

	
					
# Tutorial: Query the graph by using the query builder

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

In this tutorial step, you query your graph by using the visual query builder. The query builder provides an interactive way to explore your graph by selecting nodes and relationships.

You can also query your graph by using GQL, the graph query language. The next tutorial step shows you how.

## Switch to query builder mode

Follow these steps to switch to query builder and start querying your graph interactively:

Select **Modes** > **Query** from your graph's home page.

Tip

From this view, you can also create a read-only queryset. This queryset has the same functionalities and it allows you to share your query results.

## Build a query

Build a query to answer the question: "What products did a specific customer purchase?" This query traverses the graph from Customer through Order to Product. For example, to query customer Carla Adams' purchases, follow these steps:

Select **Add a node** to see the available nodes for querying.

Select the **Customer** node to add it to your query.

Select the purchases edge while the Customer node is selected. The query builder automatically adds the connected Order node.

Select the contains edge while the Order node is selected. The query builder automatically adds the connected Product node.

You now have a query pattern: Customer â purchases â Order â contains â Product.

Apply a filter to the Customer node to focus on a specific customer. For this tutorial, select the Customer node, and then select **Filter**.

In the **Filter** popup, configure the filter as follows:

- **For**: Customer

- **Where**: fullName = Carla Adams

Select **Apply** to add the filter to the Customer node.

The query is now set up to find all products purchased by Carla Adams.

## Run the query

Select **Run query** to run the query and see the results. The query might take a few moments to complete.

When the query finishes, collapse the query builder pane to get a better view of the results. You should see the products that Carla Adams purchased, displayed as a graph of connected Customer, Order, and Product nodes.

## Explore your data

The query builder helps you visually explore your graph:

- **Expand nodes**: Hover over a node to see its connected nodes and relationships.

- **View node properties**: Select a node to view its properties.

- **Interact with nodes**: Drag nodes to reposition them or select to highlight connections.

- **Filter results**: Apply filters to focus on specific data.

- **Select properties**: Choose which node and edge properties to include in your results.

You can view your query results in different ways:

- **Diagram view**: Visualize the graph structure and relationships. This view is the default.

- **Card view**: View detailed information about each node in a card format.

- **Table view**: See the results in a tabular format for easier analysis.

## Save the query

You can save your query by creating a queryset in your workspace. You can create a queryset in several ways in Fabric. This tutorial uses the interface in **Query** mode.

To create a queryset, follow these steps:

In **Query** mode, select **Create queryset**.

In the **New graph queryset** dialog, enter a name for your queryset (for example, "GraphQuerySet_1") and set **Location** to your workspace. Then select **Create**.

A new queryset item is created in your workspace, and the current query is saved in it. Select the triple ellipsis (...) next to the queryset name and select **Rename** to give it a meaningful name, such as "CarlaAdams_Purchases".

Querysets let you:

- Rerun queries without recreating them

- Share queries with teammates who have workspace access

- Organize related queries together

## Next step

Query the graph with GQL

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-03-24