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
					

				

			

		

	
					
# Security overview for graph in Microsoft Fabric

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

Security for graph in Microsoft Fabric is a set of platform-wide controls that manage who can create, modify, view, and share graph models and QuerySets. Graph follows the security requirements of Microsoft Fabric's platform-wide security model.

## Workspace roles and permissions for graph

Graph uses the same workspace roles as other Microsoft Fabric items. A _graph model_ defines the labeled property graph structure (nodes, edges, and table mappings) that lets you query connected data. A _graph QuerySet_ is an item that stores saved queries to run against a graph model.

The following table summarizes the permissions associated with each Microsoft Fabric workspace role's capability on graph models.

Capability
Admin
Member
Contributor
Viewer

Create or modify graph model
Yes
Yes
Yes
No

Delete graph model
Yes
Yes
Yes
No

View and read content of graph model
Yes
Yes
Yes
Yes

Share graph model
Yes
Yes
No
No

Create or modify graph queries
Yes
Yes
Yes
No

Create or modify graph QuerySet item
Yes
Yes
Yes
No

The following table summarizes the permissions associated with each Microsoft Fabric workspace role's capability on graph QuerySets.

Capability
Admin
Member
Contributor
Viewer

Create or modify graph QuerySet
Yes
Yes
Yes
No

Delete graph QuerySet
Yes
Yes
Yes
No

View and read content of graph QuerySet
Yes
Yes
Yes
Yes

Connect to a graph model from a QuerySet
Yes
Yes
Yes
No

Share graph QuerySet
Yes
Yes
No
No

Note

All users need read access to the underlying graph model to run queries through a graph QuerySet.

Only read, write, and reshare permissions are supported for graph QuerySets.

## Share a graph item

Besides assigning workspace roles, you can share graph models and QuerySets with users who don't have a role in the workspace. Sharing grants item-level permissions for downstream consumption without giving access to other workspace items.

For step-by-step instructions, see Share a graph and manage permissions.

## Related content

- Share a graph and manage permissions

- Share items in Microsoft Fabric

- Permission model in Microsoft Fabric

- Security in Microsoft Fabric

					
		

	 
		

		

	
					
		
		
			
			
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