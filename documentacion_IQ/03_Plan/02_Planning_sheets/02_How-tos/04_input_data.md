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
					

				

			

		

	
					
# Extend Planning sheets with data input

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Data input rows and columns allow Planning sheet authors to extend a sheet by entering values directly within the matrix. These inputs support planning, forecasting, and operational scenarios where certain values must be captured manually or adjusted within the sheet.

Important

This feature is in preview.

Using data input rows and columns, you can capture business inputs that aren't available in the underlying dataset or need manual adjustments while maintaining the sheet's hierarchy, totals, and calculations.

## When to use data input rows and columns

Data input rows and columns are useful when you need to:

- Capture manual adjustments or planning values.

- Add business metrics that aren't available in the dataset.

- Insert placeholder rows for future categories or products.

- Allow business users to enter data directly in the Planning sheet.

For example, a financial report might retrieve revenue and expenses from a database but require manual entry for values such as **shares outstanding** or newly introduced product categories.

## Prerequisites

Before you create data input rows or columns, make sure that you have the following prerequisites in place:

- The Planning sheet is configured with the required dataset.

- You have **edit permissions** in the Planning sheet.

- The Planning sheet includes the **row or column hierarchy** where data input is to be added.

## Insert a data input row

Select a row in the sheet where you want to insert the new row.

Go to **Insert Row** and select the **row type** to be inserted.

Insert a **Data Input Number row**.

Enter the **Title** for the **Static Row** and configure the row properties.

Select **Create**.

The new row is inserted after the selected row and becomes available for manual data entry.

### Configure row properties

When creating a data input row, you can configure the following properties.

#### **Insert As**

- **Single**: Single row is inserted.

- **Templated**: Multiple rows are inserted across dimension hierarchies.

#### Scaling factor

Specifies the numeric scaling applied to the row values, such as thousands or millions. The default option is **Auto**.

#### Include in total

Determines whether values entered in the row contribute to parent totals or grand totals.

#### Distribute parent value to children

When enabled, values entered at a parent level are automatically distributed across child rows.

#### Bind for cross-filter or RLS

Ensures that **cross-filter selections and row-level security (RLS)** rules apply to manually inserted rows. This action prevents users from viewing data outside their permitted scope.

These settings help control how users interact with manually inserted rows.

## Insert a data input column

### Types of data input columns

Planning sheet supports various types of data input columns to be inserted, depending on your needs.

- **Formula**: A calculated column that derives values using formulas.

- **Number**: A column for numeric input, including integers, decimals, currency, or percentages.

- **Simulate**: A column for entering values used in scenario simulations or adjustments.

- **Text**: A column for free-form text input.

- **Checkbox**: A boolean input column for true/false or checked/unchecked values.

- **Person**: A column to select or assign a person from a predefined list.

- **List**: A dropdown input column allowing selection from predefined options.

- **Date**: A column for selecting or entering dates.

- **Audit**: A tracking column that logs changes and user actions for auditing purposes.

### Steps to insert a data input column

Go to **Planning > Insert Column**.

Select the data input column you want to configure.

Insert a data input **Number** column. You can insert an empty series and enter your values, or copy from another series in the sheet.

Enter the **Title** and configure the properties. Select **Create**. The Number input data column is created.

Double-click and enter the values in the cell.

Similarly, you can insert the other types of data input measures and columns.

### Configure column properties

Columns have the following configurable properties:

- **Title**: Name of the input column displayed in the Planning sheet.
**Insert as**: Choose between the following options:

- **Visual Measure**: A column is added at each column hierarchy.

- **Visual Column**: A single column is added at the end outside the column hierarchy.

- **Input type**: Specifies the data type for the column (such as _Number_).

- **Row aggregation type**: Defines how values roll up across hierarchy levels (such as _Sum_).

- **Distribute parent value to children**: Automatically allocates parent values proportionally to child members.

- **Enable Multi-Dimension Allocation**: Allows splitting values across multiple dimension breakdowns.

- **Minimum Value**: Sets the lowest allowable input value for validation.

- **Maximum Value**: Sets the highest allowable input value for validation.

- **Static Value**: Set a fixed value.

					
		

	 
		

		

	
					
		
		
			
			
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