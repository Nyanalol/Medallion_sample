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
					

				

			

		

	
					
# Manage a Power BI semantic model

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					**Applies to:** â SQL analytics endpoint, Warehouse, and Mirrored Database in Microsoft Fabric

In this article, learn how to manage Power BI semantic models in Microsoft Fabric.

Note

By November 30, 2025, all Power BI _default_ semantic models are disconnected from their item and become independent semantic models. You can retain them if you still use them for reports or dashboards or delete them safely if they are no longer needed. For more information, see Blog: Decoupling Default Semantic Models for Existing Items in Microsoft Fabric.

- Since September 5, 2025, Power BI _default_ semantic models are no longer created automatically when a warehouse, lakehouse, or mirrored item is created. For more information, see Blog: Sunsetting Default Semantic Models.

- If your item doesn't have a semantic model already, you can create a Power BI semantic model.

## Manually update a Power BI semantic model

By default, Fabric doesn't automatically add tables and views to a Power BI semantic model when created, and there's no automatic sync for semantic models from their warehouse or SQL analytics endpoint source.

Once there are objects in a Power BI semantic model, you can validate or visually inspect the tables included:

- Open your **Semantic model** item in your Fabric workspace.

- Switch the mode from **Viewing** to **Editing**.

- Review the default layout for the semantic model. Make changes as needed. For more information, see Edit data models in the Power BI service.

## Monitor a Power BI semantic model

You can monitor and analyze activity on a semantic model with SQL Server Profiler by connecting to the XMLA endpoint.

SQL Server Profiler installs with SQL Server Management Studio (SSMS), and allows tracing and debugging of semantic model events. Although officially deprecated for SQL Server, Profiler is still included in SSMS and remains supported for Analysis Services and Power BI. Use with a Fabric semantic model requires SQL Server Profiler version 18.9 or higher. Users must specify the semantic model as the **initial catalog** when connecting with the XMLA endpoint. To learn more, seeâ¯SQL Server Profiler for Analysis Services.

## Related content

- Power BI semantic models in Microsoft Fabric

- Create a Power BI semantic model

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