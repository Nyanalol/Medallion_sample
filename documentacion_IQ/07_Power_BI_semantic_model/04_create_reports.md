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
					

				

			

		

	
					
# Create reports in the Power BI service in Microsoft Fabric and Power BI Desktop

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					**Applies to:** â SQL analytics endpoint, Warehouse, and Mirrored Database in Microsoft Fabric

This article describes different scenarios you can follow to create reports in Power BI on your Fabric warehouse.

## Use the OneLake catalog

In the workspace list, select the semantic model's name to get to the **Semantic model** details page, where you can find details about the semantic model and see related reports. You can also create a report directly from this page. To learn more about creating a report in this fashion, see Dataset details.

In the **OneLake catalog**, you see warehouse and their associated semantic models. By November 30, 2025, all Power BI _default_ semantic models are disconnected from their item and become independent semantic models. You can retain them if you still use them for reports or dashboards or delete them safely if they are no longer needed. For more information, see Blog: Decoupling Default Semantic Models for Existing Items in Microsoft Fabric.
- Since September 5, 2025, Power BI _default_ semantic models are no longer created automatically when a warehouse, lakehouse, or mirrored item is created. For more information, see Blog: Sunsetting Default Semantic Models.
- If your item doesn't have a semantic model already, you can create a Power BI semantic model.

Select the warehouse to navigate to the warehouse details page. You can see the warehouse metadata, supported actions, lineage and impact analysis, along with related reports created from that warehouse.

To find the warehouse, you begin with the **OneLake catalog**. The following image shows the **OneLake catalog** in the Power BI service:

Select a warehouse to view its warehouse details page.

Select the **More** menu (**...**) to display the options menu.

Select **Open** to open the warehouse.

## Create reports in the Power BI Desktop

The OneLake catalog integration in Power BI Desktop lets you connect to the Warehouse or SQL analytics endpoint of Lakehouse in easy steps.

Use **Data hub** menu in the ribbon to get list of all items.

Select the warehouse that you would like to connect

On the **Connect** button, select the dropdown list, and select **Connect to SQL endpoint**.

## Related content

- Warehouse connectivity in Microsoft Fabric

- Create reports on data warehousing in Microsoft Fabric

- Tutorial: Get started creating in the Power BI service

					
		

	 
		

		

	
					
		
		
			
			
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
		2025-07-22