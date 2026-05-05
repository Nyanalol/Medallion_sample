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
					

				

			

		

	
					
# Fabric data agent sharing and permission management

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					
## Prerequisites

- A paid F2 or higher Fabric capacity, or a Power BI Premium per capacity (P1 or higher) capacity with Microsoft Fabric enabled.

- Enable cross-geo processing and cross-geo storing for AI based on requirements explained in Fabric data agent tenant settings.

- At least one of these data sources, with data: A warehouse, a lakehouse, a Power BI semantic model, a KQL database, a mirrored database, or an ontology. You must have read access to the data source.

## Publishing and versioning

Creation of a data agent in Microsoft Fabric is an iterative process. It involves refinement of various configurations, for example:

- Selecting relevant tables

- Defining Fabric data agent instructions

- Creating example queries for each data source

As you make adjustments to enhance the performance of the Fabric data agent, you can eventually publish that Fabric data agent. Once published, a read-only version is generated, which you can share with others.

When you try to publish the Fabric data agent, you can include a description that explains what the Fabric data agent does. The description is available to consumers of the Fabric data agent, to help them understand its purpose and functionality. Other automated systems and orchestrators can also use the description, to invoke the Fabric data agent outside of Microsoft Fabric.

Note

You can ask the Fabric data agent to describe what it does. You can then refine and summarize the response to use as its description when publishing.

 -->
After you publish your Fabric data agent, you can continue to refine its current draft version to enhance its performance, without affecting the published version that other people use. This way, you can iterate with confidence, knowing that your changes remain isolated from the published version. You can seamlessly switch between the published and draft versions, testing the same set of queries on both to compare their performance. This helps you assess the effects of your changes, and you can gain valuable insights into how they improve the effectiveness of your Fabric data agent. The following screenshot shows how to switch between published and developed Fabric data agent versions:

To update the Fabric data agent description without making any other changes, navigate to **Settings**, select **Publishing**, and then update the description, as show in this screenshot:

 -->

## Sharing permission models and required source access

The **Fabric data agent sharing** feature allows you to share your Fabric data agents with others, with a range of permission models, as shown in this screenshot:

 -->

You have complete control over access to your Fabric data agent, and complete control of its use. Additionally, when you share the Fabric data agent, you must also share access to the underlying data it uses. The Fabric data agent honors all user permissions to the data, including Row-Level Security (RLS) and Column-Level Security (CLS). For Power BI semantic models accessed through a Fabric data agent, users only need Read permission on the model; workspace access isn't required. RLS and CLS continue to apply.

### Underlying data source permissions

For a user to successfully query through a Fabric data agent, they need the minimum effective permissions shown below for each connected data source type. If they have less than the listed permission, queries fail or return empty results.

Data source type
Minimum permission to query via data agent
Notes

Power BI semantic model
Read
Read is sufficient to query a semantic model via a Fabric data agent. Build/Write is only required to modify the model or use capabilities such as Prep for AI. Workspace access isn't required for interaction via a data agent.

Lakehouse
Read on the lakehouse item (and table access if enforced)
Write not required unless modifying data.

Warehouse
Read (SELECT on relevant tables)
Higher permissions only for DML/DDL operations.

KQL database
Reader role on the database
Higher roles only for management commands.

Ontology
Read on the ontology item, and Read on the underlying semantic model, lakehouse, or KQL database bound to the ontology

Other supported sources
Query/read-level access
Must allow metadata + data retrieval.

Important

Read permission on the semantic model is sufficient for queries initiated via a Fabric data agent. Build or workspace roles aren't required for these agent interactions. Build/Write is still required for model modifications or features that change the model (for example, Prep for AI).

Follow least privilege: grant only the data source permissions required. For semantic models, grant Read when users only need to query through a data agent. Grant Build or broader workspace roles only when users must modify the model or use features such as Prep for AI.

Note

This permissions change applies only to interactions through Fabric data agents. Other entry points (for example, Analyze in Excel or direct report authorship) may still require Build permission.

If a user can open the Fabric data agent but lacks the minimum permission on one or more underlying sources, queries that touch those sources fail with an authorization error or return empty results, depending on the sourceâs security model.

 -->

- **No permission selected**: If you don't select any other permission, users can only query the **published** version of the Fabric data agent. They have no access to edit or even view any configurations or details. This maintains the integrity of your Fabric data agent set-up.

- **View details**: Users can view the details and configurations of both the published and draft versions of the Fabric data agent, but they can't make any changes to it. However, they can still query the Fabric data agent, and build informative insights without risk of unintended modifications.

- **Edit and view details**: Users have full access to view and edit all the details and configurations of both the published and draft versions of the Fabric data agent. They can also query the Fabric data agent, which makes it ideal for collaborative work.

The following screenshot shows the actual permissions that you can select:

 -->
If you share a Fabric data agent before you publish it, users with default permissions (without any other permissions) can't query it. It works this way because the default permission allows users to query only the published versionâif a published version doesn't yet exist, users can't query the Fabric data agent. Users with other permissions (**View details**, or **Edit and view details**) can only access the draft version. The following screenshot shows the option to share a Fabric data agent without publishing it:

 -->

## Related content

- Data agent concept

- Fabric data agent tenant settings

- Create a Fabric data agent

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-03-31