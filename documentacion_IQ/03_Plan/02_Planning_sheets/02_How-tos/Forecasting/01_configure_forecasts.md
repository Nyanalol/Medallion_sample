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
					

				

			

		

	
					
# Forecast data to predict future trends

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Forecasting capabilities in the Planning sheet enable organizations to move beyond static annual plans and adopt agile planning methods, such as rolling forecasts and periodic reforecasting. Use forecasting to project revenue, expenses, and other metrics for upcoming periods based on historical data.

Create dynamic forecasts directly on semantic models and update them as new actuals become available. Forecasts can be generated using multiple approaches, such as copying historical values, applying averages, or manually adjusting projections.

Important

This feature is in preview.

## Prerequisite

- The column dimension is a standard date hierarchy (for example, year > quarter > month).

## Define initial forecast settings

The first step in configuring a forecast is to set the time frame for which the forecast is generated. Then configure how to populate static values in the forecast measure for past or closed periods. For instance, if you have actuals for 2025 and are generating a forecast for 2026, a static forecast measure is created for 2025.

Note

The forecast measure for previous periods can't be edited. Static values for closed forecasts can be sourced from a measure in your planning sheet by setting **Closed Period** to **Measure**. Set **Closed Period** to **Formula** to define a formula to populate closed periods.

Go to **Model** > **Forecast** to create a forecast.

Set the start and end date of the forecast period.

Choose how to fill closed forecasts. Set **Closed Period** to **Formula** and enter the formula. When creating a formula, you can reference other measures in the planning sheet.

Closed forecasts are populated using the specified formula.

## Initialize a forecast using historical or current data

Prepopulate future forecast periods using existing historical or current data. These initial values can then be manually adjusted by selecting and editing the cell.

Set **Open Period** to **Data Input** and **Default Value** to **None**.

Tip

If the measure used to initialize the forecast contains null values, you can replace them with a default value. The default value can be a static value, another measure, or a formula.

Select **Create**.

In **Period Setup**, From **Copy Source**, select the measure to use to prepopulate the forecast.

**Apply Operation** is set to **Period Range**, and **Source Periods** are automatically populated. The Revenue measure from JanuaryâDecember 2025 is used to initialize the forecast for JanuaryâDecember 2026.

Note

The period range duration should match the target period duration. For example, if the target period is six months, then you must select a period range spanning six months.

The forecast is initialized using revenue from the corresponding month in the previous year.

You can set the time period used to initialize the forecast in two ways:

To initialize forecasts with the average measure value over a specified period range, set **Apply Operation** to **Average of Period Range** and select the timeframe from **Source Periods**.

The average revenue from Q4 2025 is used to initialize each month in the 2026 forecast.

Similarly, to initialize forecasts with measure values from a single period, set **Apply Operation** to **Single Period** and select the period.

The revenue from December 2025 is used to initialize each month in the 2026 forecast.

## Initialize forecast ranges using different methods

Split a forecast period into multiple ranges and initialize each range using a different method, such as average values or data from a prior period.

Configure the initial forecast settings, then go to **Period Setup**.

Set the **Target Period** to JanuaryâMarch 2026, **Copy Source** to the Revenue measure, **Apply Operation** to **Single Period**, and **Source Periods** to December 2025.

Select **Add Range**.

Set the **Target Period** to AprilâJune 2026, **Copy Source** to the Revenue measure, **Apply Operation** to **Average of Period Range**, and **Source Periods** to JanuaryâDecember 2025.

Select **Add Range**.

Set the **Target Period** to JulyâAugust 2026, **Copy Source** to the Revenue measure, **Apply Operation** to **Period Range**, and **Source Periods** to NovemberâDecember 2025.

The 2026 forecast is split into multiple ranges based on the period setup configurations:

The forecast for JanuaryâMarch 2026 is initialized from the December 2025 revenue.

The forecast for AprilâJune (Q2) 2026 is created from the average revenue from 2025.

The forecast for JulyâAugust 2026 is based on the revenue from NovemberâDecember 2025.

The forecast values for September through Decemberâ¯2026 are blank because no initial value is configured in the Period Setup.

## Populate open forecasts from the data source

If forecast values are already available for future periods in the data source, you can populate open periods using the native forecast measure or a formula that references it.

To initialize the open forecast from a measure in the planning sheet, set **Open Period** to **Measure**, then select the measure from **Linked Measure**.

To set forecast values based on a formula, set **Open Period** to **Formula** and enter the formula.

## Update open forecasts

After a forecast is created, its initial values can be modified at any time. If the open forecast is into multiple periods, you can update the values for a specific period without affecting the configured values for the other periods.

Select **Reforecast** > **Reforecast Column**.

Define the period range to update the open forecast.

Select the measure and method to populate the forecast.

The new configuration is applied to the July forecast.

					
		

	 
		

		

	
					
		
		
			
			
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