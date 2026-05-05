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
					

				

			

		

	
					
# Tutorial: Introduction to graph in Microsoft Fabric

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

This tutorial walks you through an end-to-end graph scenario in Microsoft Fabric. You take sample data, model it as a graph, and query it for insights â building a working understanding of the graph experience along the way.

## Prerequisites

Before you start this tutorial, verify that:

You have access to a Microsoft Fabric capacity (F2 or higher) or a Fabric trial.

Graph is available in your region.

A Fabric administrator enabled Graph in your Fabric tenant. They enable this setting in the admin portal.

You're a member of a Fabric workspace or have permission to create items in the workspace. For more information, see Workspaces in Microsoft Fabric.

Important

Access management of the graph is restricted to the workspace that hosts it. Users outside of the workspace can't access the graph. Users within the workspace who have access to the underlying data in the lakehouse can model and query the graph.

## Graph end-to-end scenario

In this tutorial, you take on the role of a data analyst at the fictional Adventure Works company. You build a graph model to represent the relationships between customers, orders, employees, products, and vendors. Then, you query the graph to uncover insights about customer purchasing behavior and product performance. Follow these steps:

- Load sample data into a lakehouse.

- Create a graph by creating a graph model and loading data from OneLake.

- Add nodes to your graph for each entity in the data model.

- Add edges to your graph to define relationships between nodes.

- Add multiple node and edge types from one table to create a richer graph model.

- Query the graph with the query builder using an interactive visual interface.

- Query the graph with GQL using the code editor.

- Clean up tutorial resources by deleting the workspace and other items.

For a detailed overview of how data flows through graph â from data sources through OneLake storage, graph modeling, querying, and results â see graph architecture.

## Sample data

For this tutorial's sample data, use the Adventure Works sample dataset. Adventure Works is a fictional bicycle manufacturer that sells bicycles and accessories to customers worldwide.

Note

The Adventure Works dataset used in this tutorial is a custom-transformed version designed specifically for demonstrating graph capabilities. It differs from standard Adventure Works datasets and supports graph-specific features.

The Adventure Works dataset includes:

- **Customers** - People who purchase products.

- **Orders** - Sales transactions.

- **Employees** - Staff who process sales.

- **Products** - Items available for purchase.

- **Product categories and subcategories** - Product classification hierarchy.

- **Vendors** - Suppliers who produce products.

## Data model

The Adventure Works data model demonstrates a typical retail scenario with multiple entities and relationships. In this tutorial, you model the following relationships:

Relationship
Description

Employee sells Order
Employees process customer orders

Customer purchases Order
Customers make purchases

Order contains Product
Orders include products

Product isOfType ProductSubcategory
Products belong to subcategories

ProductSubcategory belongsTo ProductCategory
Subcategories belong to categories

Vendor produces Product
Vendors supply products

## Next step

Load sample data

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-03-29