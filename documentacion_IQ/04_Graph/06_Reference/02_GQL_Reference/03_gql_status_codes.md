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
					

				

			

		

	
					
# GQL status codes reference

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
Note

This feature is currently in public preview. This preview is provided without a service-level agreement, and isn't recommended for production workloads. Certain features might not be supported or might have constrained capabilities. For more information, see Supplemental Terms of Use for Microsoft Azure Previews.

When you run GQL queries in Microsoft Fabric, you receive status information along with your results. This article lists all GQLSTATUS codes used by graph in Microsoft Fabric.

## Success codes

GQLSTATUS
Message
Description

00000
note: successful completion
Query executed successfully with at least one row

00001
note: successful completion - omitted result
Query executed successfully but no table returned (currently unused)

02000
note: no data
Query executed successfully but returned an empty table

## Error codes

GQLSTATUS
Message
Description

22000
error: data exception
Runtime error in data processing

42000
error: syntax error or access rule violation
Query syntax error or access permission issue

G2000
error: graph type violation
Query violates graph schema constraints

## Understanding status codes

**Success indicators:** Codes that start with 0 indicate successful query execution. Even if your query returns no data (02000), query execution was successful.

**Using status codes:** Check the GQLSTATUS code to determine if your query succeeded. Handle empty results appropriately in your applications.

## Related content

- GQL Language Guide - Complete guide to GQL syntax and usage

- GQL Quick Reference - Syntax quick reference

- Error handling strategies - Best practices for robust queries

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-03-13