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
					

				

			

		

	
					
# Optimize input values to meet a target

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Optimize supports multivariate scenarios by adjusting multiple data input measures to meet a target value for a selected result measure. Use Optimize to determine the driver inputs required to reach a target KPI (key performance indicator), such as revenue, margin, or cash, and to streamline what-if analysis by recalculating the required input changes.

Set a target value, then run Optimize to calculate the input values required to reach the target. Plan recalculates the inputs and applies the updated values to achieve the specified outcome.

Important

This feature is in preview.

## Prerequisites

Add at least one formula measure to the planning sheet. Optimize requires a formula measure to run. The formula measure acts as the target or output.

Ensure the formula uses a data input or forecast measure. Optimize adjusts the data input values to meet the target. The data input measure acts as the input or driver that Optimize changes to reach the target.

Set **Row aggregation** and **Column aggregation** to **Formula** for the formula measure.

## Run Optimize on calculated fields

Select the target cell in the formula measure field, then select **Optimize**. In this example, the formula measure used is Profit per unit.

Choose an optimization goal: **Maximize**, **Minimize**, or **Target**. Optimize adjusts the data input measure values to meet the selected goal. To achieve a specific target, set **Objective** to **Target** and enter the target value.

Set **Variables to Update** to the data input measure to adjust to meet the target. In this case, the COGS is adjusted to meet the target Profit per unit.

Select **Add Constraint** and define the minimum and maximum limits for the data input measure. For example, the cost of goods can only be adjusted based on achievable reductions. Select **Apply**, then **Run**.

Tip

This step is optional. Select **Run** to skip defining constraints.

Validate the adjusted value and select **Apply** to update the data input measure (in this case, COGS).

The Profit per unit is increased to the target value of 17.32 by changing the COGS to 1.0163 million.

## Adjust parameters to achieve targets

If **Optimize** doesn't reach the target value, adjust **Strategy**, **Tolerance**, and **Number of iterations**, then run Optimize again.

**Strategy** controls the size of the adjustments made to the input value while trying to achieve the target. Lower values use smaller steps and can take longer to converge. Higher values use larger steps and can converge faster, but can overshoot.

**Tolerance** defines the allowed error between the achieved value and the target value and determines how precise the Optimize result is. For example, the target Profit per Unit = 0.50. If the tolerance = 0.01, Optimize stops when the achieved value is between 0.49 and 0.51.

**Number of iterations** sets the maximum number of times to repeat the optimization loop. In each iteration, Optimize performs these operations:

- Tries an input value.

- Calculates the result.

- Compares the result to the target value.

- Adjusts the input value based on the comparison.

## Run Optimize on parent cells

To meet a target at an aggregated level, apply Optimize on parent (total) cells. When Optimize runs on a parent cell, it recalculates the required change and distributes the update to the underlying editable child cells.

In this example, Optimize reduced COGS at the parent level and distributed the reduction proportionally across the child rows to achieve the target profit.

## Using Optimize on forecast measures

Optimize helps align forecast measures to business targets by calculating the required adjustments to achieve the target.

- Optimize updates forecast values only for open periods. Closed periods are locked by default.

- To run Optimize on forecasts, configure the open period forecast as a data input measure so the values are editable.

In this example, Implied Price is calculated by using the formula shown:

The steps to run Optimize on forecast measures are the same as those for data input measures described earlier.

To reach the target implied price of 86.42, Optimize updates the revenue forecast at the parent level and distributes the change proportionally across the child rows.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-28