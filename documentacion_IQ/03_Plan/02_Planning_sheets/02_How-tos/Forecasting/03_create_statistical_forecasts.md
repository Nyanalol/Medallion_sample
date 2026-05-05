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
					

				

			

		

	
					
# Generate forecasts from statistical data

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Statistical forecasting applies historical trends and seasonality to generate forecasts without manual input. The prediction feature enables forwardâlooking analysis by deriving future values from historical patterns. It supports the configuration of confidence interval, seasonality, and growth factor, and allows top-down or bottom-up approaches to apply forecasts across hierarchies. Results can be explored visually or in tabular form.

Important

This feature is in preview.

## Prerequisites

- A forecast measure with blank initial values.

- The planning sheet must contain at least two years of historical data.

## Generate forecast

Select the cell for which to create a forecast.

Go to **Model** > **Predict**.

Selectâ¯More options (â¦) and then selectâ¯**Create New Profile** and enter the profile name. If a profile already exists, select the profile.

Tip

The forecast configuration can be saved to a profile. Select the profile to reuse a predefined configuration.

Select the historical date range based on which predictions will be generated.

Select the forecast date range.

Tip

The forecast range can extend beyond the open period. Range extension is useful when the open forecast period is short (for example, Q1 only). Predicted values are needed over a longer period to assess accuracy and get a better perspective.

Your data might show repeating patterns over time, known as seasonality. Select the seasonality type:

If your data repeats at one regular interval, choose **Single Seasonality**.
For example, sales that repeat every month.
If your data repeats at more than one time level, choose **MultiâSeasonality**.
This applies when the data shows patterns at multiple intervals, such as a quarterly trend (Q1, Q2, Q3, Q4), and a monthly pattern within each quarter.

Set the **Confidence (%)** to indicate the level of certainty that the actual value will fall within the predicted range.

Set the **Growth Factor (%)** that defines the expected rate at which the predicted values increase or decrease over time.

Assign the **Evaluation** method:

- To enter the forecast for a parent cell and distribute it to child categories, select **Top Down**.

- To enter forecasts at the child level and aggregate them to the parent category, selectâ¯B**ottom Up**.

Select **Run Forecast**.

Preview the predicted values in a graph:

- Historical data points are plotted in grey.

- Predicted data points are plotted in green.

- The green reference band indicates the confidence interval.

Select **Table** to review the actual predicted values in tabular format.

Select **Save Forecast** after parameters are adjusted to create an accurate prediction.

Predictions are generated for the selected measure and row category. As the Bottom-Up approach is used, values are automatically aggregated to the parent levels.

## Locking selections

When the **Predict** panel opens, the selected cell can still be changed by selecting a different visible cell on the canvas. The updated row and column selection is reflected in the Predict panel.

When the selection is locked, selecting other cells doesn't change the row or column used for prediction.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-22