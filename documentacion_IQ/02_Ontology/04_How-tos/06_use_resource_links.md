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
					

				

			

		

	
					
# Resource links in ontology (preview)

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					In ontology (preview), _resource links_ let you associate resources with an entity type. Currently, the only type of resource that's supported are Power BI reports.

Important

This feature is in preview.

Linking reports provides essential provenance, context, and discoverability for insights tied to a business concept. By linking reports directly to an entity type, you can:

- Quickly access relevant analytics without searching across workspaces

- Maintain consistent context between data, ontology, and reporting

## Prerequisites

Before adding resource links, make sure you have the following prerequisites:

- A Fabric workspace with a Microsoft Fabric-enabled capacity.

- **Ontology item (preview)** enabled on your tenant.

- An ontology (preview) item with entity types defined.

- A Power BI report containing insights relevant to an entity type, and permission to view the report. (If you don't have view permission for a report, you can still add it as a link, but it will appear as _Report unavailable_ when viewed in the list.)

## Add a resource link

To add a link to an existing Power BI report on an entity type, follow these steps.

Open your ontology (preview) item to the contextual canvas.

Select the entity type from the **Entity Types** pane to open its configuration. Open the **Resource links** tab.

If there are no resources linked yet, the **Resource links** tab is empty with a button to **Add resource link**. If you have existing resource links, they appear in a list.

To add a resource link, select the **+** button (if some resources are linked already) or the **Add resource link** button (if no resources are linked yet).

Fabric opens your OneLake catalog of resources. Choose the Power BI report you want to link to the entity type, and select **Connect**.

Verify that the new report appears in the list of linked resources on the **Resource links** tab.

## View resource links

You can view resources linked to an entity type from the following locations.

### Resource links tab

To view a list of linked resources by entity, open the entity type configuration in the contextual canvas and select the **Resource links** tab.

### Entity type overview

Linked resources are also visible in the **Entity type overview** experience.

To open the entity type overview, select the entity type from the **Entity Types** pane and select **Entity type overview** from the menu ribbon.

The entity type overview automatically shows a **Resource links** tile when at least one link exists.

You can open the resources directly from the tile by selecting their names. Reports open inside Fabric in a new tab.

## Manage the Resource links tile

If there's no **Resource links** tile present in the entity type overview, you can add it manually.

In the entity type overview, select **Add tile > Resource links**.

Preview the links that will be visible on the tile and select **Create**.

You might also see these messages on the tile creation step:

If a tile already exists, you see this message: _A Resource links tile already exists on this overview_.

If there are no linked resources on the entity type, you see this message: _No links to display_, with a link to the entity type configuration.

If you add the tile anyway, the tile stays empty in the overview.

## Delete a resource link

Note

Deleting a resource link in ontology does **not** delete the report from the Power BI workspace.

To remove a linked resource from an entity type:

Start in the configuration canvas. Open the entity type configuration and select the **Resource links** tab.

Hover over the resource you want to delete, and select the trash icon.

Select **Delete** when prompted to confirm the deletion.

To remove linked resources from the entity type overview, remove the entire Resource links tile. (You can't keep the tile while deleting individual links from it.)

Select the **...** options on the Resource links tile, and select **Delete**.

Select **Delete** to confirm the deletion when prompted.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-09