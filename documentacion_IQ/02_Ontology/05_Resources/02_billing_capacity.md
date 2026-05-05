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
					

				

			

		

	
					
# Capacity consumption for ontology (preview)

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					This article contains information about how ontology (preview) capacity usage is billed and reported.

Important

This feature is in preview.

## Consumption rates

Important

Billing for ontology (preview) is in effect, except where it's specifically noted on this page that charges are only for associated underlying Fabric items.

The following table defines how many capacity units (CU) are consumed when an ontology (preview) item is used.

Meter name
Operation name
Description
Unit of measure
Fabric consumption rate

Ontology Modeling
Ontology Modeling
Measures the usage of ontology definitions (including entity types, relationships, properties, and data bindings).
Per ontology definition usage 

_Usage is defined by intervals of at minimum 30 minutes, each time the API is triggered by Create/Update/Delete (CUD) operations to entity types, properties, relationship types, or bindings._
0.0039 CU per hour

Ontology Logic and Operationsâ
Ontology Logic and Operationsâ
Measures the usage for ontology operations, including visualizations, logic, graph creation, ontology exploration, and querying and analyzing with query endpoints (including API and SQL endpoints)
Per min
0.666667 CU per min 

_This meter is not currently in effect._

Ontology AI
Ontology AI Operations
Measures the usage of AI for context driven reasoning and query over ontology
(Input) Per 1,000 Tokens 

(Output) Per 1,000 Tokens
(Input) 400 CU seconds 

(Output) 1,600 CU seconds

OneLake Cache
Graph cache storage
Use of graph incurs graph cache storage, which is billed at the same rate as OneLake Cache.
OneLake Cache usage per month
_n/a_

## Capacity usage examples

This section contains more details about capacity usage calculations for each ontology (preview) operation, including examples.

### Ontology Modeling

When a Create/Update/Delete (CUD) operation triggers the ontology API, it initiates a usage window of 30 minutes. Billing starts when the first CUD operation is triggered, and the time will continue for 30 minutes after the last operation is triggered.

For example, say you have 1,000 ontology definitions comprised of a combination of entity types, properties, and relationship types. When you edit a property, the consumption is 1,000 definitions * 0.5 hours (unit of measurement for ontology definition usage; 30 minutes represented in hours) * 0.0039 CU/hr (Fabric consumption rate of this operation) = 1.95 CU hours.

Now, say you trigger a second operation 15 minutes later. The total time calculated is the original 30 minutes from the first operation + (no additional charge for the 15 minutes where the windows are overlapping) + 15 minutes at the end for the remainder of the second operation's window = 45 minutes of measured time, or 0.75 hours. This avoids overlapping or restarting the window, preventing double-counting when summing usage across multiple actions.

### Ontology Logic and Operationsâ

Ontology Logic and Operations usage is incurred when ontology is actively executing compute operations. Examples of operations that contribute to this meter are changing the properties on an entity that's undergone data binding, traversing the graph, querying data through the entity type overview tiles, refreshing the graph, or exploring the graph through use of the ontology API or SQL. Usage is measured in minutes of CPU uptime. Each query session includes a 20-minute window after the last query.

For example, say you run ontology exploration and workload queries continuously for 2 hours (120 minutes) in a single session. The calculated time for this meter is 140 minutes (120 active minutes + 20-minute window) * 0.666667 CU/min (Fabric consumption rate of this operation) = 93.3 CU minutes (or 1.56 CU hours).

_This meter is not currently in effect. Ontology users are only billed for logic and operations according to their underlying Fabric Graph usage._

### Ontology AI Operations

Ontology AI Operations are classified as **background jobs** to handle a higher volume of requests during peak hours.

Fabric optimizes performance by allowing operations to access more CU (Capacity Unit) resources than are allocated to their capacity. Fabric smooths, or averages, the CU usage of a _background job_ over a 24-hour period. Then, per the Fabric throttling policy, the first phase of throttling begins when a capacity has consumed all its CU resources that are allocated for the next 10 minutes.

For example, assume each ontology request has 2,000 input tokens and 500 output tokens. The price for one ontology request is calculated as follows: [[2,000 (number of input tokens) Ã 400 (Fabric consumption rate of inputs for this operation)] + [500 (number of output tokens) Ã 1600 (Fabric consumption rate of outputs for this operation)]] / 1,000 (unit of measurement for this operation) = 1,600.00 CU seconds, or 26.67 CU minutes.

Since ontology is a background job and usage is averaged over a 24-hour period, this example request that takes 26.67 CU minutes consumes, on average, one CU minute of each hour of a capacity. On an F64 capacity with 64 * 24 = 1,536 CU Hours in a day, if each ontology job consumes 26.67 CU mins = 0.44 CU Hours, you could run over 3,456 of these requests each day before exhausting the capacity.

## Monitor usage

The Microsoft Fabric Capacity Metrics app provides visibility into capacity usage for all Fabric workloads in one place. Administrators can use the app to monitor capacity, the performance of workloads, and their usage compared to purchased capacity. The Microsoft Fabric Capacity Metric app shows operations for ontology (preview).

The Microsoft Fabric Capacity Metrics app must be installed by a capacity admin. Once the app is installed, anyone in the organization can be granted permissions to view the app. For more information about the app, see Install the Microsoft Fabric Capacity Metrics app.

## Manage usage

This section contains tips for managing your ontology (preview) capacity usage.

### Pause and resume activity

Microsoft Fabric allows administrators to pause and resume their capacities to enable cost savings. You can pause and resume your capacity as needed.

### Other considerations

Consider the following factors that could potentially affect cost:

- **Modeling:** Charges for the time your ontology model is running. This factor is dependent on the number of definitions, model complexity, size, and usage time.

- **Ontology logic and operations:** Charges for running queries and associated compute. Operations like indexing, refresh rates, and idle time can affect CU usage.

- **AI reasoning and query:** Charges for advanced reasoning and natural language queries powered by AI, based on the number of tokens used.

- **Associated Fabric items:** Charges from associated Fabric items that are being used through ontology, like Fabric Graph and Fabric Activator.

- **Graph refresh:** The Graph in Microsoft Fabric child item of your ontology (preview) item can be set to refresh automatically on a set schedule, and these refreshes contributes to capacity usage. If capacity usage is too high, you can edit or disable the Graph item schedule in your workspace. For more information, see Refresh the graph model.

### Subject to changes in Microsoft Fabric workload consumption rate

Consumption rates are subject to change at any time. Microsoft provides notice of changes through email and in-product notifications. Changes are effective on the date stated in the release notes and the Microsoft Fabric blog.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-02