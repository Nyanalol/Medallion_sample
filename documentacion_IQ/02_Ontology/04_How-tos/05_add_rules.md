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
					

				

			

		

	
					
# Rules in ontology (preview) (with Fabric Activator)

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					The _rules_ feature of ontology (preview) lets you automate and manage event-driven alerts directly within your entity types. With the integrated capabilities of Fabric Activator, you can achieve real-time monitoring and response for your business entities. This feature allows you to define alerts that monitor properties across every instance of an entity type, to ensure comprehensive, ongoing oversight.

Important

This feature is in preview.

Rules transform ontologies from static information models to operationalized ones. The ontology becomes capable of automatically initiating business processes through alerts and automated actions, all within a seamless and context-aware environment. This feature helps you unlock automation capabilities without needing to switch between tools or write custom code, to streamline workflows and enhance efficiency.

Note

Rules in ontology (preview) rely on Fabric Activator and are subject to Fabric Activator costs. For more information about Fabric Activator pricing, see Understand Activator capacity consumption, usage reporting, and billing.

## Prerequisites

Before defining rules, make sure you have the following prerequisites:

- A Fabric workspace with a Microsoft Fabric-enabled capacity.

- **Ontology item (preview)** enabled on your tenant.

- An ontology (preview) item with data binding completed for at least one time series property.

## Key concepts

Rules use the following ontology (preview) concepts. For definitions of these terms, see the Ontology (preview) glossary.

- _Entity type_

- _Rule_

- _Fabric Activator_

## Create a rule

Open the rules configuration from the ontology overview, or from the preview experience.

To open rules from the ontology overview, select **...** next to an entity type name to open its options menu. Hover over **Add and view rule**, then select **View rules**.

To open rules from the preview experience, select **Add and view rules > View rules** from the menu ribbon.

The **Rules** panel opens, showing all the rules associated with an entity type.

By default, ontology rules are saved to a new Fabric Activator item. If you want to make changes, select **Edit** from the **Rules** panel. From there, you can change the name of the new Fabric Activator item or choose an existing Fabric Activator item to use instead.

Note

We recommend saving all rules for an ontology to the same workspace and Fabric Activator item.

In the main **Rules** panel, create a new rule with the **Add rule** button.

Configure the rule, including conditions, actions, and save location. Ontology-authored rules support temporal conditions (for example, thresholds exceeded over a time window) and aggregations via the Fabric Activator condition configuration; these options are available in the rule designer opened from ontology and are evaluated per entity instance. For more information about these fields, see Create a rule in Fabric Activator.

When you're finished configuring, select **Create**.

The rule is now visible in the **Rules** panel. To start or stop the rule, toggle the switch next to the rule name.

## View and edit a rule

To examine the rule in more detail, open it in Fabric Activator. Select **...** next to the rule name to open its options menu, then **Open in Activator**.

In Fabric Activator, you can make further edits to the rule and analyze its conditions and actions. For more information, see Create a rule in Fabric Activator.

					
		

	 
		

		

	
					
		
		
			
			
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