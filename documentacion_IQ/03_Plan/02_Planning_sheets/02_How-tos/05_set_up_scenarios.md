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
					

				

			

		

	
					
# Analyze planning outcomes with scenarios

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Scenarios let you create multiple planning versions within a Planning sheet to evaluate different business outcomes. Use scenarios to compare budgets, forecasts, and alternative business assumptions without affecting the base data.

Important

This feature is in preview.

## Prerequisites

Before you create a scenario, make sure that you have the following prerequisites in place:

- You have access to the Planning sheet.

- Required fields and dimensions are added.

- The planning model includes a scenario dimension.

- You have permission to edit planning data.

## Create a scenario

Go to **Model > Scenario**.

Enter a name for the scenario in **Scenario name**.

Select the series to be simulated and select **Create**.

Adjust the slider to increase or decrease cell values and simulate sales values. Net revenue is recalculated accordingly.

Review the results and select **Save** to save the scenario.

To create more scenarios, select the **+** icon at the bottom of the page. When you're done, select **Save** to save the report.

The new scenario is added to the Planning sheet and is available for planning and analysis.

## Scenario toolbar

Use the **Scenario** tab to create, manage, and analyze scenarios in the Planning sheet.

## Compare scenarios

Use **Compare scenarios** to analyze differences between two scenarios across measures, time periods, and dimensions. This view helps you evaluate performance, identify variances, and make data-driven decisions.

### Open scenario comparison

Go to the planning view.

Select **Compare Scenario**.

The **Scenario Comparison** view opens.

### Configure comparison

The following configuration options are available:

- **Compare**: Select the primary scenario you want to analyze.

- **With**: Select the scenario to compare against.

- **Measures**: Choose the measures to include in the comparison. Select **All Measures** or a specific measure.

### Key elements of the comparison view

The comparison grid displays data across selected dimensions and time periods.

- **Scenarios**: Displays values for both selected scenarios.
**Î Scenario**: Shows the variance between the two scenarios.

- Positive values indicate an increase.

- Negative values indicate a decrease.

- **Time periods**: Data is grouped by periods such as **Q1** and **Q2**.

- **Measures**: Displays values for selected measures.

- **Dimensions**: Rows represent hierarchical categories such as _Category_, _Beverages_, and _Water_.

### Exit comparison

Select **Exit Compare** to return to the standard view shown in the following image.

## Update scenario settings

Update scenario settings such as the name, included measures, and lock status in **Edit Scenario** under **Scenario > Settings**.

**Scenario name**: Update the name of the scenario.

Under **Include series in scenarios**, select the measures to include:

- Choose one or more series.

- Only selected series are included in the simulation.

**Lock the scenario**: Select **Lock Scenario** to prevent changes to the scenario.

Note

When a scenario is locked, you cannot modify values or settings until it is unlocked.

Select **Apply** to save changes, or select **Cancel** to discard changes.

## Configure input method

Use the **Input Method** to simulate and adjust values directly in the Planning sheet.

### Simulation

Adjust the slider to increase or decrease cell values and test different outcomes.

Enter a custom value in a cell to apply a specific adjustment.

### Distribution

Distribution lets you apply consistent or trend-based changes quickly across multiple data points. Use the distribution options to apply values across rows or columns.

When adjusting distribution values, use the slider to increase or decrease values proportionally. Enter a custom value in a cell to apply a specific adjustment.

Available distribution options:

**Copy until last row in <category>**: Apply the value to all rows from the selected category until the last row.

**Copy until last row with trend in <category>**: Apply values across rows based on an existing trend.

**Copy to all rows in <category>**: Distribute the value to all rows in the selected category.

**Copy to all rows**: Apply the value across all rows in the sheet.

**Copy until last column**: Apply the value across columns until the last column.

**Copy until last column with trend**: Distribute values across columns using a trend.

Select **Reset value** to revert changes to the original value.

## Show variance

View differences between scenario values and base values when **Show variance** is checked.

### Slider settings

Select **Slider settings** to open the **Variance settings** pane.

### Variance settings options

The **Variance settings** pane has the following options:

- **Series**: Displays the series included in the scenario.
**Increase is good**: Enabled by default.

- When enabled, increases are shown in green and decreases in red.

- When disabled, increases are shown in red.

**Value range**: Specify the maximum value for the range.

The default value is **100%**.

## Reset

Revert changes made in the scenario.

## Copy scenario data to base

Use **Copy to base** to apply simulated values from a scenario to the base sheet.

You can copy scenario values to the base by following these steps:

- Select **Copy to base** from the **Scenario** toolbar, or select the **More options (â®)** menu next to the scenario tab.

- Review the selected columns.

- Select **Proceed**.

The selected scenario values are copied to the corresponding base measures. After copying, the base report reflects the updated values from the selected scenario.

Note

Only simulated values are copied to the base. Native measures are not copied from scenarios to the base.

## Bulk edit in scenarios

Use **Bulk edit** to apply changes to multiple values in a scenario at once. Use bulk edit to efficiently perform large-scale scenario simulations without updating individual cells.

### Open and configure bulk edit

- Select **Bulk Edit** from **Scenario**.
In the **Bulk Edit** pane, configure the following:

- **Measure**: Select the scenario measure to update.

- **Row dimensions**: Select the required categories and subcategories.

- **Column dimensions**: Select the required columns or time periods.

Note

As you select dimensions, the Planning sheet updates to reflect the filtered data.

### Apply bulk changes

**Set value**: Assign a specific value to the selected cells. Use the slider or input box to define the value or adjustment, or specify the value or percentage to apply.

Select **Apply**.

The selected values are updated across the specified dimensions.

- **Cancel**: Closes the dialog without saving changes.

- **Reset**: Clears all selections and restores default settings.

## Pivot

Change the layout to analyze data from different perspectives. Use **Pivot** in the **Scenario** tab to create alternate row-level views for analyzing and simulating scenarios. Pivoting lets you rearrange dimensions, such as Category and Sub Category, without affecting the underlying data.

### Create a pivot

- Go to the **Scenario** tab.

- Select **Pivot**.

- The **Row Pivot** dialog opens.

- In the **Row Pivot** dialog, select **+ Add** to create a new pivot.

- Enter a name for the pivot in the **Name** field.

- In **Available fields**, select the dimensions to include.

- Add selected fields to the **Fields** section. Arrange the fields in the desired order.

- Select **Save**.

A pivot called _pivot 2_ is created for subcategories.

## Writeback scenarios

Use **Writeback** to persist scenario data from the planning view to the underlying data source. You can write back all scenarios or a selected scenario. Use writeback to:

- Save planning inputs and updates

- Commit scenario changes to the data source

- Share finalized data with other users or systems

To write back scenarios,

Go to the **Scenario** tab.

Select **Writeback**.

Choose one of the following:

- **Writeback All**:  Writes back all available scenarios.

- **Writeback**: Writes back only the selected scenario.

Writeback is completed.

Note

The writeback option is enabled only after the destination is added. For more information, see Write back data.

## Logs

Use **Logs** to track and review all writeback activities. Go to **Scenario** > **Logs**. This view provides detailed information about each writeback operation, including status, duration, and user details.

## Close scenario

Exit the current scenario by selecting **Close Scenario** from **Scenario**.

## Configure scenario access

Control who can access, manage, and interact with scenario using the **Security** settings.

Select **Security** from the toolbar.

In the left pane, select **Scenario**.

**Who can access scenario**: Specify users who can view and interact with each scenario. Enter names to grant access.

Select **Save** to apply changes, or select **Cancel** to discard the changes.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-23