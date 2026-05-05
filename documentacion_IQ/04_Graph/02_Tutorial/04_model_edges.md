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
					

				

			

		

	
					
# Tutorial: Add edge types to your graph

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

In this tutorial step, you add edge types to your graph model. Edges define the relationships between nodes, such as "Customer purchases Order" or "Employee sells Order."

Important

For canonical edge-mapping requirements, including source and target key compatibility and data type alignment, see Choose edge types.

## Adventure Works edge mappings

In the Adventure Works data model, create edges to define the relationships between the nodes. These edges capture key business relationships â such as which employees sold which orders, which customers made purchases, and which vendors supply which products. When you add the edges, you can query across these relationships to answer questions like "What products did a specific customer buy?" or "Which vendors supply touring bikes?"

The following table shows the edge mappings to use:

Edge type label
Mapping table
Source node type/ Associated mapping column
Target node type/ Associated mapping column

sells
adventureworks_orders
Employee / EmployeeID_FK
Order / SalesOrderDetailID_K

purchases
adventureworks_orders
Customer / CustomerID_FK
Order / SalesOrderDetailID_K

contains
adventureworks_orders
Order / SalesOrderDetailID_K
Product / ProductID_FK

isOfType
adventureworks_products
Product / ProductID_K
ProductSubcategory / SubcategoryID_FK

belongsTo
adventureworks_productsubcategories
ProductSubcategory / SubcategoryID_K
ProductCategory / CategoryID_FK

produces
adventureworks_vendorproduct
Vendor / VendorID_FK
Product / ProductID_FK

## Add edge types to the graph

To add edges to your graph, follow these steps:

Select **Add edge** to create a relationship between nodes.

In **Add edge**, configure the edge by referencing the Adventure Works edge mappings table for the appropriate values:

- Enter the edge **Label** to describe the relationship.

- Select the **Mapping table**.

- Select the **Source node** and its associated mapping column.

- Select the **Target node** and its associated mapping column.

For example, for the first edge, use these values:

- **Label**: sells

- **Mapping table**: adventureworks_orders

- **Source node**: Employee

- **Mapping table column to be linked to source node key**: EmployeeID_FK

- **Target node**: Order

- **Mapping table column to be linked to target node key**: SalesOrderDetailID_K

Important

If you configured node types with compound keys (IDs consisting of multiple columns), you also need to select the corresponding compound key columns here.

Select **Confirm** to add the edge to your graph.

Repeat the process for all remaining edge types listed in the Adventure Works edge mappings table.

Tip

Unlike node types, edge types don't get properties automatically. You can add properties when the data describes the relationship itself - for example, quantity or price on a contains edge. Edge properties are most useful when you write GQL queries that filter, aggregate, or return relationship-level data. For this tutorial, you don't need to add edge properties. For guidance, see Add properties to edge types.

You should see all the edge types represented in your graph.

## Load the graph

After adding all node types and edge types, load the graph:

- Select **Save** to verify the graph model, load data from OneLake, construct the graph, and make it ready for querying. Be patient, as this process might take some time depending on the size of your data. When the graph loads successfully, you see all node and edge labels in the graph view canvas.

Important

Currently, you need to reload the graph (by selecting **Save**) whenever you change the model or the underlying data.

At this point, you defined all the node types and edge types for your graph. These node types and edge types form the schema of your graph model. Your graph is ready for querying once you ingest data to form the nodes and edges.

## Next step

Create multiple node and edge types from one mapping table

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-28