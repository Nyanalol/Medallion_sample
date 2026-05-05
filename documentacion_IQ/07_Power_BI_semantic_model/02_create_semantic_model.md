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
					

				

			

		

	
					
# Create a Power BI semantic model

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					**Applies to:** â SQL analytics endpoint, Warehouse, and Mirrored Database in Microsoft Fabric

You can create new Power BI semantic models based on lakehouse, SQL analytics endpoint, or Warehouse items in Microsoft Fabric.

Note

By November 30, 2025, all Power BI _default_ semantic models are disconnected from their item and become independent semantic models. You can retain them if you still use them for reports or dashboards or delete them safely if they are no longer needed. For more information, see Blog: Decoupling Default Semantic Models for Existing Items in Microsoft Fabric.

- Since September 5, 2025, Power BI _default_ semantic models are no longer created automatically when a warehouse, lakehouse, or mirrored item is created. For more information, see Blog: Sunsetting Default Semantic Models.

- If your item doesn't have a semantic model already, you can create a Power BI semantic model.

## Create a new Power BI semantic model in Direct Lake mode

These **new Power BI semantic models** can be edited in the workspace using Open data model and can be used with other features such as write DAX queries and semantic model row-level security. For more about semantic models and Direct Lake mode, see Power BI semantic models in Microsoft Fabric.

To create a Power BI semantic model using Direct Lake mode, follow these steps:

In the **Fabric portal**, create a new semantic model based on the desired item:

- Open the lakehouse and select **New Power BI semantic model** from the ribbon.

- Alternatively, open the relevant item, such as your warehouse or SQL analytics endpoint, select **New semantic model**.

- Enter a name for the new semantic model, select a workspace to save it in, and pick the tables to include. Then select **Confirm**.

- The new Power BI semantic model can be edited in the workspace, where you can add relationships, measures, rename tables and columns, choose how values are displayed in report visuals, and much more. If the model view doesn't show after creation, check the pop-up blocker of your browser.

- To edit the Power BI semantic model later, select **Open data model** from the semantic model context menu or item details page to edit the semantic model further.

Power BI reports can be created in the workspace by selecting **New report** from web modeling, or in Power BI Desktop by live connecting to this new semantic model. To learn more on how to connect to semantic models in the Power BI service from Power BI Desktop

## Create a new Power BI semantic model in import or DirectQuery storage mode

Having your data in Microsoft Fabric means you can create Power BI semantic models in any storage mode: Direct Lake, import, or DirectQuery. You can create more Power BI semantic models in import or DirectQuery mode using SQL analytics endpoint or Warehouse data.

To create a Power BI semantic model in import or DirectQuery mode, follow these steps:

- Open Power BI Desktop, sign in, and select **OneLake**.

- Choose the SQL analytics endpoint of the lakehouse or warehouse.

- Select the **Connect** button dropdown list and choose **Connect to SQL endpoint**.

- Select import or DirectQuery storage mode and the tables to add to the semantic model.

From there, you can create the Power BI semantic model and report to publish to the workspace when ready.

## Create a new, blank Power BI semantic model

The **New Power BI semantic model** button creates a new blank semantic model.

## Script a Power BI semantic model

You can script out a Power BI semantic model from the XMLA endpoint with SQL Server Management Studio (SSMS).

View the Tabular Model Scripting Language (TMSL) schema of the semantic model by scripting it out via the Object Explorer in SSMS. To connect, use the semantic model's connection string, which looks like powerbi://api.powerbi.com/v1.0/myorg/username. You can find the connection string for your semantic model in the **Settings**, under **Server settings**. From there, you can generate an XMLA script of the semantic model via SSMS's **Script** context menu action. For more information, see Dataset connectivity with the XMLA endpoint.

Scripting requires Power BI write permissions on the Power BI semantic model. With read permissions, you can see the data but not the schema of the semantic model.

## Next step

Manage a Power BI semantic model

## Related content

- Semantic models in the Power BI service

					
		

	 
		

		

	
					
		
		
			
			
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
		2025-12-06