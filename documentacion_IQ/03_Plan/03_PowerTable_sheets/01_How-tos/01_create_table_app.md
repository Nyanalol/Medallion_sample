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
					

				

			

		

	
					
# Build a no-code table app with PowerTable sheets

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					In this article, you learn how to create a table app with PowerTable sheets.

Important

This feature is in preview.

## Prerequisites

Before you begin, make sure that you have the following prerequisites in place:

- Connections established to the Fabric SQL database and/or semantic model that contain the data for your PowerTable.

- A plan item created in your Fabric workspace.

## Ways to create a table

You can use one of these four approaches to create a table:

- Upload Excel or CSV file to import data

- Connect to an existing database table

- Enter data directly into the table app

- Connect to a semantic model

## Create a PowerTable sheet

In your plan, select **New PowerTable Sheet** or select the **PowerTable** icon on the landing page. Enter a name for the sheet and select **Create**.

Select **Create a New App** to create your app. You can also select **Explore PowerTable** to experience a sample PowerTable app.

**Select a Connection:** Choose a Fabric SQL connection. You can also create a new connection if required.

**Database Name:** Select the Fabric SQL database. The metadata for your app is stored here. Select **Add**.

Note

When a new Plan item is created in a workspace, a Fabric SQL database is automatically created for that workspace. This database stores all the plan app metadata for workspace users. You can choose this database.

Select **Connect**.

## Create a table

Select a table for the data to be stored in. There are two options:

- Select **Existing Table** to connect to an existing table in the Fabric SQL database, OR

- Select **New Table** to create a new table in the database. This option is shown in the next steps.

To create a new table and import the CSV data, follow these steps:

Select **New Table**.

Choose the database schema.

Enter a **Table Name**.

Select **Upload File** in the **Import Data** section.

Select the space to upload the CSV or Excel file from your local system.

Preview the data and select **Next**.

Note

To import only the table structure, select **Exclude records and import table structure only**.

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

### Write back changes to source

You can update your data table and sync changes with the source database.

To edit a cell in the table, double-click it, enter the value, and select **Enter**.

With **Preview Changes**, you can preview the changes.

Select **Save to Database**, then **Proceed** to save the changes instantly (unless an approval workflow is enabled).

The source database is updated.

Select **PowerTable > Audit**. The audit trail records all changes in detail, including the Row ID, action type, modified columns, previous values, new values, user name, and timestamp.

Note

There are also other ways to create a new table.

## Next steps

After creating your first PowerTable application, explore these other features:

- **Reference data management**: Manage master and reference data centrally while maintaining synchronization with enterprise data platforms. PowerTable sheets provide support for bulk insert/update, lookups, formulas, cascading updates, audit tracking, CRUD permissions, SCD support, and native Microsoft Fabric SQL DB integration.

- **Project management**: PowerTable sheets provide Gantt layouts and timeline views to manage project schedules, track progress, and monitor dependencies.

- **Workflow management**: Approval workflows enable governance over sensitive data updates by routing change requests through designated approvers.

- **Operational automation**: Eventâdriven automation enables teams to automate repetitive processes such as record updates and notify them via email/Teams notifications.

- **Collaborative data management**: Comments, threaded discussions, mentions, and notifications allow teams to collaborate directly within the data application.

- **Productivity**: Use forms for structured data collection and insertion without coding. Use the master-detail view, cross-tab view, and resource layout for time management, task management, tracking, and resource planning.

- **Connected planning**: Link PowerTable tables to plans so updates in PowerTable sheets become inputs for a plan. This process allows a change in your revenue forecast to automatically flow into headcount, cash flow, and operational plans.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-06