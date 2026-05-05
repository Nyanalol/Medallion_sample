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
					

				

			

		

	
					
# Tutorial: Load data

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

In this tutorial step, you download the Adventure Works sample data from GitHub and load it into a lakehouse. If you already have a lakehouse with data (for example, from your own organization), you can skip this step.

The dataset contains tables in Parquet format. The tables represent various entities in the fictional bicycle manufacturing company, such as customers, products, orders, and vendors. In later tutorial steps, you use this data to build and query a graph that reveals how these entities connect. For example, you can discover which customers purchased which products, or which vendors supply specific product categories.

## Download the sample data

Go to the graph in Microsoft Fabric GQL example datasets on GitHub.

Select the _adventureworks_docs_sample.zip_ file and download it to your local machine.

Tip

To download a file from GitHub, select the file, and then select the **Download raw file** icon.

Extract the downloaded _adventureworks_docs_sample.zip_ file to a folder on your local machine.

Tip

In File Explorer, right-click the zip file and select **Extract All**. Then choose a destination folder such as c:\Downloads\AdventureWorks_Data.

## Create a lakehouse

If you don't already have a lakehouse, create one to store the sample data:

In Microsoft Fabric, select the workspace where you want to create the lakehouse.

Select **+ New item**.

Select **Store data** > **Lakehouse**.

Enter a name for your lakehouse (for example, "AdventureWorksLakehouse"), clear the **Lakehouse schemas** option, and then select **Create**.

Important

Make sure you clear the lakehouse schema option. Graph doesn't currently support lakehouses with lakehouse schemas enabled.

For more detailed instructions, see Create a lakehouse with OneLake.

## Upload the sample data to the lakehouse

In your lakehouse Explorer, hover over **Files**. Select the triple ellipsis (...) that appears, and then select **Upload** > **Upload folder**.

Note

You can't upload a folder by using **Upload files**.

Upload folder selected after hovering over File's triple ellipsis (not shown after Upload is selected)." data-linktype="relative-path">

In the **Upload folder** dialog, browse to where you extracted the folder and select it. Then select **Upload**. A pop-up window might appear asking you to confirm the number of files to upload: select **Upload** in that pop-up, and then select **Upload** in the **Upload folder** dialog.

Your lakehouse should now contain the uploaded _AdventureWorks_Data_ folder with the data files.

## Load the data into tables

After you upload the files, load them into tables. Tables are the source data from a lakehouse that you use to create node types and edge types in your graph model.

For each subfolder in the uploaded _AdventureWorks_Data_ folder, follow these steps to load the data into tables:

Drag and drop the subfolder (for example, _adventureworks_customers_) from the **Files** section to the **Tables** section in the lakehouse Explorer.

In the **Load folder to new table** dialog, enter a table name (the default is the folder name), set the file type to Parquet, and then select **Load**.

After you load all the tables, your Lakehouse Explorer shows eight tables. The lakehouse in your workspace is now ready with the Adventure Works sample data. In the next step, you create a graph model that uses this data.

## Next step

Create a graph

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-14