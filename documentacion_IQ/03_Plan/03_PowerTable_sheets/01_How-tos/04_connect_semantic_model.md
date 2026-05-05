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
					

				

			

		

	
					
# Connect PowerTable sheet to a semantic model

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					In this article, you look at the steps to connect to a semantic model from a PowerTable sheet. Connect to an existing semantic model and create a table app. The data table, along with any changes or updates, is saved to your preferred destination database.

Important

This feature is in preview.

Note

You can also create a table by uploading data from an Excel or CSV file. For more information, see Create a table app with PowerTable sheets.

## Prerequisites

Before you begin, make sure that you have the following prerequisites in place:

- Connections established to the Fabric SQL database and/or semantic model that contain the data for your PowerTable.

- A plan item created in your Fabric workspace.

## Create a PowerTable sheet

In your plan, select **New PowerTable Sheet** or select the **PowerTable** icon on the landing page. Enter a name for the sheet and select **Create**.

Select **Create a New App** to create your app. You can also select **Explore PowerTable** to experience a sample PowerTable app.

**Select a Connection:** Choose a Fabric SQL connection. You can also create a new connection if required.

**Database Name:** Select the Fabric SQL database. The metadata for your app is stored here. Select **Add**.

Note

When a new Plan item is created in a workspace, a Fabric SQL database is automatically created for that workspace. This database stores all the plan app metadata for workspace users. You can choose this database.

Select **Connect**.

## Create a table

Select **New Table**.

Choose the database schema.

Enter a **Table Name**.

Choose **Connect To Semantic Model** in **Import Data**.

Select your **Connection** and the required **Semantic Model**.

Select **Next**.

Note

Capacity workspaces with Pro licenses are not supported. Make sure to select a workspace of premium capacity.

Map and assign your data to the table by selecting the required fields and corresponding values.

Set the primary key fields by selecting the three dots and selecting primary keys.

If needed, you can use filters to include only specific field values from the table.

Select **Next**.

### Configure columns

PowerTable sheets automatically detect column properties and rename any unsupported column names to match the supported format. You can review and modify them as needed.

Review the detected column settings.

Select the **primary key** if unselected.

Modify column properties, such as the data type, input type, and display name.

Enter default values wherever required.

Optionally, add columns using **Add column**.

Select **Finish**.

Note

In this step, you can **enable Slowly Changing Dimensions (SCDs)** by turning the toggle.
For a table, this is a one-time configuration that cannot be modified later.

The table app is created successfully in PowerTable with the configured columns and values. Select **Save** to save your table.

## Next steps

Configure access control and automated workflows and approvals for your new app.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-13