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
					

				

			

		

	
					
# Create and share a cloud connection for a semantic model

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					This article explains how to connect to a semantic model from a plan (preview) item.

To connect a plan to a semantic model, a workspace admin or member must create a **shareable cloud connection**. Other users can use this connection to access the semantic model. The following steps describe how to create and share the connection.

## Prerequisites

Before you can create the semantic model connection, make sure you have the following prerequisite in place:

- Data in a Power BI semantic model

## Create a semantic model connection

This connection is used to connect to your semantic models when you create a plan. The following steps must be completed by a workspace admin or member who has access to the semantic model.

In your Fabric toolbar, select the **Settings** icon. Select **Manage connections and gateways > New**.

Select **Cloud** as the **New connection**.

Enter a **Connection name**.

For **Connection type**, select _Power BI Semantic Model_.

Set the **Authentication method** to _OAuth2.0_.

Select **Edit credentials**, then sign in with your Microsoft account.

Select **Create**.

## Share the semantic model connection

Next to the name of the semantic model connection in your Fabric workspace, select **...** and **Manage users**.

Search the **name or email** of the users to share the semantic model connection.

Set the access permission to either _User_, _User with resharing_, or _Owner_.

Select **Share** to share the connection.

The semantic connection created is shared and can be accessed by other users.

Other users can now use this shared connection to connect to the semantic model.

## Connect to a Direct Lake semantic model

If you want to connect to a Direct Lake semantic model, follow the steps below. These steps can be performed by admin or member users.

Next to the name of the semantic model in your Fabric workspace, select **... > Settings > Gateway & Cloud Connections**.

By default, the connection is set to **Single Sign On**. You can create and use a new connection.

Select **Create a connection** from the connection list.

Enter the new **connection name**, and select _OAuth 2.0_ as the **authentication method.**

Select **Create**.

Select the newly created Direct Lake semantic model connection from the list. Select **Apply.**

## Next steps

Now that your semantic model connection is created, you can create a Planning sheet that uses this connection: Create a Planning sheet.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-06