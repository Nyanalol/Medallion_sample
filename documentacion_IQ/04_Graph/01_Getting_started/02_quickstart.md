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
					

				

			

		

	
					
# Quickstart: Create your first graph in Microsoft Fabric

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

In this quickstart, you use graph in Microsoft Fabric to create a basic graph with two nodes and one edge, and then run a query. This process takes about 15 minutes.

For a comprehensive tutorial that covers the full Adventure Works data model and more advanced scenarios, see the graph tutorial.

## Prerequisites

Before you start this quickstart, verify that:

You have access to a Microsoft Fabric capacity (F2 or higher) or a Fabric trial.

Graph is available in your region.

A Fabric administrator enabled graph in your Fabric tenant. They enable this setting in the admin portal.

You're a member of a Fabric workspace or have permission to create items in the workspace. For more information, see Workspaces in Microsoft Fabric.

Important

Access management of the graph is restricted to the workspace that hosts it. Users outside of the workspace can't access the graph. Users within the workspace who have access to the underlying data in the lakehouse can model and query the graph.

Tip

If you don't see **Graph model (preview)** in the **+ New item** menu, ask your Fabric administrator to enable graph in the admin portal.

## Load sample data

To create your graph, first load sample data into a lakehouse in your Fabric workspace.

### Download the sample data

Go to the graph GQL example datasets on GitHub.

Select the _adventureworks_docs_sample.zip_ file and download it to your local machine.

Tip

To download a file from GitHub, select the file, and then select the **Download raw file** icon.

Extract the downloaded _adventureworks_docs_sample.zip_ file to a folder on your local machine.

Tip

In File Explorer, right-click the zip file and select **Extract All**, then choose a destination folder.

### Create a lakehouse

In Microsoft Fabric, select your workspace.

Select **+ New item**.

Select **Store data** > **Lakehouse**.

Enter a name (for example, "AdventureWorksLakehouse"), clear the **Lakehouse schemas** option, and select **Create**.

Important

Graph doesn't currently support lakehouses with lakehouse schemas enabled.

### Load the data into tables

For this quickstart, you only need two tables: _adventureworks_customers_ and _adventureworks_orders_. Upload the full sample data folder, and then load just these two tables.

Note

You can upload the entire folder if you plan on doing the full tutorial later or want to explore the additional data.

- In your lakehouse, hover over **Files**, select the ellipsis (...), and then select **Upload** > **Upload folder**.

- Browse to the extracted folder and upload it. This action uploads all the sample data files to your lakehouse.

- Expand **Files** and the uploaded folder to see the subfolders. For this quickstart, you only need to load two of them as tables.

- Hover over the _adventureworks_customers_ subfolder, select the ellipsis (...), and choose **Load to Tables** > **New table**.

- Set the file type to Parquet and select **Load**.

- Repeat steps 4-5 for the _adventureworks_orders_ subfolder.

## Create a graph model

In your Microsoft Fabric workspace, select **+ New item**.

Select **Analyze and train data** > **Graph model (preview)**.

Tip

Alternatively, enter "graph" in the search box and press **Enter** to search for graph items.

Enter a name (for example, "MyFirstGraph") and select **Create**.

After creating the graph model, you're taken to the graph view where you can see the default mode is set to **Model** with **Save**, **Get data**, **Add node**, and **Add edge** buttons at the top.

## Add data to your graph model

To add data to your graph model, follow these steps in graph view:

Select **Get data**.

From the OneLake catalog, select your lakehouse with the Adventure Works data.

Select **Add**.

Select the _adventureworks_customers_ and _adventureworks_orders_ tables, and then select **Load**.

## Define your graph's structure

Now that your data is loaded, define your graph's structure by adding nodes and edges. In this quickstart, you add two node types (Customer and Order) and one edge type (purchases) to model the relationship between customers and their orders.

### Add two nodes

Select **Add node**.

Configure the first node:

- **Label**: Customer

- **Mapping table**: adventureworks_customers

- **ID of mapping column**: CustomerID_K

Select **Confirm**.

Select **Add node** again.

Configure the second node:

- **Label**: Order

- **Mapping table**: adventureworks_orders

- **ID of mapping column**: SalesOrderDetailID_K

Select **Confirm**.

### Add one edge

Select **Add edge**.

Configure the edge:

- **Label**: purchases

- **Mapping table**: adventureworks_orders

- **Source node**: Customer

- **Source mapping column**: CustomerID_FK

- **Target node**: Order

- **Target mapping column**: SalesOrderDetailID_K

Select **Confirm**.

Select **Save** to load the graph. Loading might take a few moments. When the graph loads successfully, you see the node and edge labels in the graph view canvas.

## Query your graph

Run a GQL query to find the top five customers by order count.

Select  **Query** mode.

Select **Code editor** from the top menu.

Enter the following GQL query in the input box:

`
MATCH (c:Customer)-[:purchases]->(o:`Order`)
RETURN c.fullName AS customer_name, count(o) AS num_orders
GROUP BY customer_name
ORDER BY num_orders DESC
LIMIT 5

`

Select **Run query**. You should see five rows listing customer names and their order counts, sorted from most to fewest orders.

The following image shows the GQL query and its results:

Congratulations! You created your first graph in Microsoft Fabric and ran a query against it.

## Next steps

- Graph tutorial - Build a complete graph with multiple nodes, edges, and queries.

- GQL language guide - Learn GQL syntax.

- What is graph in Microsoft Fabric? - Learn about graph concepts.

					
		

	 
		

		

	
					
		
		
			
			
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