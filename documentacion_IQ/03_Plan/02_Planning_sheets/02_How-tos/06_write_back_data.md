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
					

				

			

		

	
					
# Persist planning data using writeback

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Data writeback in Planning sheets allows you to save planning inputs and updates from a Planning sheet to a supported external data destination such as databases, cloud data warehouses, data lake, and other storage systems. Saving planning data enables you to persist user inputs such as budgets, forecasts, adjustments, and scenario data directly to your data platform. This process ensures that planning data remains synchronized with your enterprise data platform.

Important

This feature is in preview.

## Why use data writeback?

Data writeback enables organizations to keep planning and analytics data in a single governed environment, rather than exporting data manually.

Common scenarios include:

- Saving **budget and forecast inputs**

- Storing **scenario planning results**

- Capturing **manual adjustments**

- Synchronizing planning data with enterprise data warehouses

## Prerequisites

Before you begin, make sure that you have the following prerequisites in place:

- The Planning sheet contains at least one **row or column dimension**.

- A valid **writeback destination** is configured.

- Required permissions are assigned to users who perform writeback.

## Configure writeback settings

The steps in this section show you how to configure writeback settings.

### Create a writeback destination

- Go to **Writeback > Add Destination**.

- Select a **Database connection**.

- Enter a **Database Name**.

- Enter **a Table Name**.

- Select the **Decimal Precision**.

- Select **Add** to create the writeback destination.

### Manage destination

Select **Writeback > Manage Destination** to manage your destinations.

### writeback type

Set the writeback table structure from **Writeback > WB Type**.

- Select **Long** to store measures as key-value pairs a **row-based format**.

- Select **Wide** to store measures in a **column-based format**.

- Select **Long with Changes**. This is the same as long format, but it **tracks only the changed values** written back from the Planning sheet.

- Select **Wide with Changes**. This is the same as wide format, but it **tracks only the changed values** written back from the Planning sheet.

### General settings

Manage other writeback settings from **Writeback > General Settings**.

The writeback settings are used to configure how data entered in a Planning sheet is saved back to the underlying data source. It ensures that planning data entered by users is stored correctly, consistently, and in a format that aligns with the organizationâs data model. It defines the structure, filtering behavior, and data format used when writing planning values to the destination.

- **General**: Defines the core settings for the writeback operation.

- **Data**: Used to select and configure the measures and dimensions that participate in the writeback process.

- **Destinations**: Defines where the planning data is written back, such as a database table or storage location.

- **Advanced**: Provides more configuration options for controlling writeback behavior and system-level settings.

## Perform a writeback

You can do a writeback of Scenarios, Forecasts, Data Input values, Comments, Annotation, Allocations Results. Create the required artifact and follow these steps to perform the writeback.

Here, you perform a writeback of the inserted Data Input Number column _Discount_.

Select **Writeback > Writeback**.

Writeback is completed.

Select **Writeback > Logs** to view the writeback logs.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-01