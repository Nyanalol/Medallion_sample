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
					

				

			

		

	
					
# What is a cube?

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					In many business scenarios, plans are created separately for each dimensionâsuch as regions, product lines, departments, or time periodsâresulting in duplicated effort and fragmented planning. Multi-dimensional cube planning lets you create and allocate plans across multiple dimensions with different granularities in a single step. Cubes enable plans to stay synchronized across different levels of detail.

Important

This feature is in preview.

## Driver-based allocation model

Each cube is configured around a data input measure or forecast measure. Allocation within the cube is performed using an allocation driver (also referred to as a reference measure or allocation key).

The allocation driver is typically a DAX (Data Analysis Expressions) measure from the semantic model, such as prior year actuals, current year revenue, units sold, headcount, or production volume.

This driver measure provides the weights and ratios used for proportional distribution.

## How allocation works

- A value is entered at a summarized level, such as 500 entered for a product without selecting lower-level dimensions (for example, region or province).

- The selected allocation driver measure determines how the value should be distributed.

- The value is allocated proportionally across all valid dimension intersections, based on the driver measureâs relative weights.

## Allocation formula (conceptual)

The allocated value is calculated by multiplying the entered value by the relative weight of the allocation driver at each valid intersection. The following formula shows how allocations works:

`
Allocated Value =
Entered Value Ã
(Driver Value at the intersection Ã· Sum of Driver Values within the hierarchy scope)

`

In the formula,

- _Entered Value_ is the total value entered at a higher level of aggregation.

- _Driver Value at the intersection_ is the allocation driver's value for a combination of row and column dimensions.

- The _hierarchy scope_ includes all valid lowerâlevel intersections over which the entered value is distributed.

## What allocation means in practice

Allocation is performed only for dimension intersections where the driver has a non-null value.

Values are distributed based on the relative contribution of each driver value within the hierarchy scope.

Allocation respects the dimensional granularity and breakdowns configured in the cube, ensuring consistency with the data model.

## Multidimensional allocation

Cubes support distributing plans across:

- Dimensions present in the planning sheet

- Dimensions not currently visible in the sheet, but configured in the cube breakdown

- Multiple granularities, simultaneously

Complex enterprise allocationsâsuch as Region > Product Line > Departmentâcan occur in a single action, while maintaining data integrity across the cube.

The allocation driver measure doesn't need to be added to the planning sheet. It can exist solely in the semantic model and be used internally as the weighting mechanism.

## Use case: Enterprise level budget allocation

Consider an organization allocating an annual budget across Regions, Product Lines, and Departments.

The organization can follow these steps to use a cube:

- Enter the total budget at a higher level.

- Select a driver measure (for example, prior year actuals) as the allocation driver.

- The cube proportionally distributes the budget across all valid intersections.

- Allocations remain synchronized across all dimensionsâeven the dimensions not visible in the current sheet.

This approach avoids manual breakdowns, duplicate models, and reconciliation errors.

## Use case: Multi-granular assumptions with hierarchical allocation

Consider an organization planning across two core hierarchies:

- Geography Hierarchy: Region > Country

- Product Hierarchy: Brand > Category > Product

These hierarchies define the full analytical space (Region Ã Country Ã Brand Ã Category Ã Product Ã Time).

The organization can follow these steps to apply a cube-driven planning model:

Capture assumptions at their natural grain.

Each assumption is entered at the level most relevant to the business:

- Revenue Plan > Product Ã Country

- Cost Plan > Region Ã Brand

- Marketing Plan > Brand

Each input reflects how the business actually plans, not an artificial lowest level.

Use a common driver for alignment.

A consistent driver measure (for example, Revenue Actuals) is used to determine distribution weights across the entire hierarchy.

Allocate across hierarchies.

The cube automatically spreads each assumption across missing dimensions:

- Brand-level > down to Category > Product

- Region-level > down to Country

- Combined > expanded to Product Ã Country

All allocations follow the driver distribution.

Converge to a common grain.

All assumptions are aligned to a unified level: Product Ã Country Ã Time.

Enable unified reporting.

Once aligned, assumptions can be combined seamlessly, enabling metrics like: Profit = Revenue â (Cost + Marketing) at the Product Ã Country level.

Planners can work at different levels while ensuring all data converges into a single, consistent analytical model.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-24