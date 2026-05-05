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
					

				

			

		

	
					
# Import measures between Planning sheets with InfoBridge

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					With InfoBridge in plan (preview), you can consolidate measures from different data sources like files and Planning sheets into a target Planning sheet (for example, integrating multiple regional forecasts into a single global forecast).

Important

This feature is in preview.

In this article, you learn how to import a measure from one Planning sheet into another.

## Prerequisites

Create two Planning sheets with identical row and column dimensions. The row and column dimensions must match in both sheets to import measures successfully.

Sample reports used in this article:

A COGS Planning sheet that is used for forecasting and contains a _COGS Projections_ data input measure.

A sales Planning sheet

In this article, you use InfoBridge to bring COGS projections into the Sales report.

## Create a bridge

Go to **Data** > **Queries** > **Add** and select **Planning sheet**.

Select **COGS Report** from the **Sheet** dialog.

Select the **COGS Projections** measure to be uploaded to the bridge. Select **Add**.

A new bridge is created with the COGS Projections measure. The scope of this article is limited to importing a measure without any transformations. Validate the data and select **Close**.

Note

InfoBridge can be used to transform, cleanse, and change the structure of the data.

## Import a measure

Open the target Planning sheet, _Quarterly Sales Report_.

The bridge created in the previous step appears under the **Queries** section. To import COGS projections, add it to the **Values** field.

Measures from InfoBridge act like regular data source measures and can be used for calculations or included in other reports and visualizations.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-03-18