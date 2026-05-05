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
					

				

			

		

	
					
# Example graph datasets

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Most documentation articles for graph in Microsoft Fabric assume one of the following example property graphs when they provide GQL queries:

The _social network example graph_ is the primary example graph used in the GQL reference documentation.
The article on its schema definition explains the detailed structure of the graph.

The _AdventureWorks example graph_ is used in the quickstart and tutorial.

The graph samples repository publishes the required datasets for these graphs. Both datasets are packaged as zip archives containing subfolders of Delta Parquet files. For loading instructions, see the quickstart Load sample data section.

For further instructions on how to obtain and load these datasets, see the README file.

## AdventureWorks dataset

The adventureworks_docs_sample.zip file contains a custom-transformed version of the Adventure Works sample database, structured for graph modeling. The quickstart uses two tables (customers, orders). The full tutorial uses all eight tables.

Note

This dataset differs from the standard Adventure Works datasets used in other Microsoft documentation. It's specifically transformed for graph scenarios.

### AdventureWorks tables

Table
Node label
Key column
Description

adventureworks_customers
Customer
CustomerID_K
People who purchase products

adventureworks_employees
Employee
EmployeeID_K
Staff who process sales

adventureworks_orders
Order
SalesOrderDetailID_K
Sales transactions (line-item level)

adventureworks_products
Product
ProductID_K
Items available for purchase

adventureworks_productcategories
ProductCategory
CategoryID_K
Top-level product classification

adventureworks_productsubcategories
ProductSubcategory
SubcategoryID_K
Mid-level product classification

adventureworks_vendors
Vendor
VendorID_K
Suppliers who produce products

adventureworks_vendorproduct
VendorProduct
ProductID_FK
Vendor-to-product mapping

## Social network dataset

The ldbc_snb_docs_sample.zip file contains a dataset derived from the LDBC Social Network Benchmark. It models a social media platform with people, forums, posts, comments, and tags. This dataset demonstrates advanced graph schema features including node type inheritance, edge type families, and compound property types.

### Social network tables

The dataset contains tables for 14 node types and 23 edge types, following this naming convention:

- ldbc_snb_node_XXX â Node table for :XXX nodes

- ldbc_snb_edge_FROM_XXX_TO â Edge table for :XXX edges from :FROM to :TO nodes

Every row in a node table is uniquely identified by the id column. Edge tables use src_XXX_id and dst_YYY_id columns to link source and destination nodes.

For the complete GQL schema definition with all node and edge types, see GQL schema example: Social network.

## Related content

- Quickstart: Create your first graph

- Tutorial: Introduction to graph

- GQL schema example: Social network

					
		

	 
		

		

	
					
		
		
			
			
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