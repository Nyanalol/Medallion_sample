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
					

				

			

		

	
					
# Consume Fabric data agent as a model context protocol server

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					The Model Context Protocol (MCP) is an emerging standard in the AI landscape that allows AI systems to connect with tools and data outside of themselves. It defines how an AI model can discover whatâs available and interact with it in a consistent way. Instead of building one-off integrations, MCP offers a standard way to plug things in that works across different apps and services. This makes it much easier for AI systems to go beyond their built-in knowledge while keeping things consistent. It also helps teams move faster, since they donât have to reinvent the same connections every time.

MCP has two main parts: the client and the server.

An MCP client is the app or experience the user interacts with. Itâs where you ask questions or trigger actions. The client reaches out to MCP servers to find tools and use them. For example, Visual Studio Code can act as an MCP client when it connects to external tools to retrieve data, or help you write and run code.

An MCP server exposes tools, data, or services so they can be used by clients. It tells the client whatâs available and how to use it. For example, a Fabric data agent can act as an MCP server by exposing enterprise data and queries that an AI system can use.

Together, the client and server make it easy to connect AI systems with real data and actions, without building custom integrations every time.

Important

This feature is in preview.

## Prerequisites

- A paid F2 or higher Fabric capacity, or a Power BI Premium per capacity (P1 or higher) capacity with Microsoft Fabric enabled.

- Enable cross-geo processing and cross-geo storing for AI based on requirements explained in Fabric data agent tenant settings.

- At least one of these data sources, with data: A warehouse, a lakehouse, a Power BI semantic model, a KQL database, a mirrored database, or an ontology. You must have read access to the data source.

## How it works

Fabric data agents can also function as MCP servers. When used as an MCP server, a Fabric data agent exposes a single tool. This tool represents the data agent itself, so external AI systems can interact with it through the MCP protocol. Because of this, it's important to provide a detailed and accurate description when publishing a Fabric data agent. The description becomes the tool description for the MCP server. External AI systems use this description to determine when and how to invoke the data agent. A clear and comprehensive description ensures that the agent is correctly understood and can be effectively used in AI workflows.

The Fabric data agent as an MCP server is valuable for people who build or test their own AI systems. It allows them to connect directly to the data agent and access enterprise data that lives in Fabric OneLake without having to switch between different tools or platforms. This capability makes it easier to integrate enterprise knowledge into AI experiments and development workflows, all within a single environment.

Note

Currently, you can use the Fabric data agent MCP server only in **VS Code**. If youâre using your own MCP client, it can also work, as long as you set up authentication

To get started, after publishing the data agent, go to the **Settings** of the agent and open the **Model Context Protocol** tab. Here you see the following information:

- **Data agent MCP server name**

- **MCP server URL**

- **Data agent MCP tool name**

- **MCP server tool description**

You can also download the **mcp.json** file from this tab. Use this file to configure the MCP server in VS Code.

## Setting up the MCP server in VS Code

Open **VS Code** and select a folder to work in.

Inside this folder, create a folder named **.vscode**.

Inside the inner folder, create a file called mcp.json.

VS Code automatically displays a blue **Add Server** button at the bottom right of the window.

Select **Add Server** and select **HTTP**. You're prompted to enter a URL. You can copy the **MCP server URL** from the Setting tab of the data agent as was shown earlier.

Press **Enter** and provide a name for your MCP server. Use this name to display the data agent MCP server in your VS Code environment.

VS Code attempts to authenticate with the server. Select **Allow** and sign in with your credentials.

## Enabling Agent Mode

After adding the MCP server, enable **Agent Mode** in VS Code. Agent Mode lets VS Code act as an orchestrator interface, connecting your editor with MCP servers to interact with external tools like the Fabric data agent. To enable it:

In VS Code, go to the **Command Palette** (Ctrl+Shift+P or Cmd+Shift+P).

Search for **Enable Agent Mode** and select it.

Confirm any prompts to activate the mode.

When Agent Mode is active, select an **orchestrator** to handle your queries. Available orchestrators in public preview include **GPT-5, GPT-4.1, Claude Sonnet 4.5, Gemini 2.5 pro**, and many more. The orchestrator manages the flow of information between your queries in VS Code and the Fabric data agent MCP server.

## Using the Fabric Data Agent MCP Server

When you enable Agent Mode and select the orchestrator:

- You can start asking questions directly from VS Code.

- The orchestrator routes your queries to the Fabric data agent MCP server.

- The agent returns answers based on the knowledge it has access to, including organizational data stored in Fabric OneLake.

By functioning as an MCP server, the Fabric data agent allows users to integrate organizational knowledge into AI workflows, perform experiments, and develop AI solutions without leaving VS Code. This integration streamlines access to OneLake data and enhances productivity for developers and business users alike.

## Related content

- Data agent concept

- Data agent end-to-end tutorial

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-15