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
					

				

			

		

	
					
# Power BI semantic models in Microsoft Fabric

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					**Applies to:** â SQL analytics endpoint, Warehouse, and Mirrored Database in Microsoft Fabric

In Microsoft Fabric, Power BI semantic models are a logical description of an analytical domain, with metrics, business friendly terminology, and representation, to enable deeper analysis. This semantic model is typically a star schema with facts that represent a domain, and dimensions that allow you to analyze, or slice and dice the domain to drill down, filter, and calculate different analyses.

Note

By November 30, 2025, all Power BI _default_ semantic models are disconnected from their item and become independent semantic models. You can retain them if you still use them for reports or dashboards or delete them safely if they are no longer needed. For more information, see Blog: Decoupling Default Semantic Models for Existing Items in Microsoft Fabric.

- Since September 5, 2025, Power BI _default_ semantic models are no longer created automatically when a warehouse, lakehouse, or mirrored item is created. For more information, see Blog: Sunsetting Default Semantic Models.

- If your item doesn't have a semantic model already, you can create a Power BI semantic model.

Microsoft renamed the Power BI _dataset_ content type to _Power BI semantic model_ or just _semantic model_. This applies to Microsoft Fabric as well. For more information, see New name for Power BI datasets. To learn more about Power BI semantic models, see Semantic models in the Power BI service.

## Direct Lake mode

Direct Lake mode is a groundbreaking new engine capability to analyze very large datasets in Power BI. The technology is based on the idea of consuming parquet-formatted files directly from a data lake, without having to query a Warehouse or SQL analytics endpoint, and without having to import or duplicate data into a Power BI semantic model. This native integration brings a unique mode of accessing the data from the Warehouse or SQL analytics endpoint, called Direct Lake. Direct Lake overview has further information about this storage mode for Power BI semantic models.

Direct Lake provides the most performant query and reporting experience. Direct Lake is a fast path to consume the data from the data lake straight into the Power BI engine, ready for analysis.

In traditional DirectQuery mode, the Power BI engine directly queries the data from the source for each query execution, and the query performance depends on the data retrieval speed. DirectQuery eliminates the need to copy data, ensuring that any changes in the source are immediately reflected in query results.

In Import mode, the performance is better because the data is readily available in memory, without having to query the data from the source for each query execution. However, the Power BI engine must first copy the data into the memory, at data refresh time. Any changes to the underlying data source are picked up during the next data refresh.

Direct Lake mode eliminates the Import requirement to copy the data by consuming the data files directly into memory. Because there's no explicit import process, it's possible to pick up any changes at the source as they occur. Direct Lake combines the advantages of DirectQuery and Import mode while avoiding their disadvantages. Direct Lake mode is the ideal choice for analyzing very large datasets and datasets with frequent updates at the source. Direct Lake will automatically fallback to DirectQuery using the SQL analytics endpoint of the Warehouse or SQL analytics endpoint when Direct Lake exceeds limits for the SKU, or uses features not supported, allowing report users to continue uninterrupted.

Direct Lake mode is the storage mode for new Power BI semantic models created on a Warehouse or SQL analytics endpoint.

Using Power BI Desktop, you can also create Power BI semantic models using the SQL analytics endpoint of Warehouse or SQL analytics endpoint as a data source for semantic models in import or DirectQuery storage mode.

## Create and manage Power BI semantic models

When you create a semantic model on a lakehouse or warehouse, you choose which tables to add. From there, you can manually update a Power BI semantic model.

To get started, see:

- Create a semantic model

- Manage a semantic model

## Limitations

Semantic models in Fabric follow the current limitations for semantic models in Power BI. Learn more:

- Azure Analysis Services resource and object limits

- Data types in Power BI Desktop - Power BI

- Semantic models are independent items in Fabric and can be managed via REST APIs to enumerate semantic models in a workspace, check for dependencies (reports/dashboards) and model content, and delete unused ones. This includes decoupled semantic models that were created by default in the past, which are no longer created automatically.

- If the parquet, Apache Spark, or SQL data types can't be mapped to one of the Power BI desktop data types, they're dropped as part of the sync process. This is in line with current Power BI behavior. For these columns, we recommend that you add explicit type conversions in their ETL processes to convert it to a type that is supported. If there are data types that are needed upstream, users can optionally specify a view in SQL with the explicit type conversion desired. This will be picked up by the sync or can be added manually as previously indicated.

- Semantic models can only be edited in the SQL analytics endpoint or warehouse.

## Next step

Create a Power BI semantic model

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