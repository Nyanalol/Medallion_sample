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
					

				

			

		

	
					
# Add and configure datasources in Fabric data agent

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Data Agent in Microsoft Fabric enables organizations to build conversational experiences over their enterprise data. By connecting Fabric artifacts to a Data Agent, users can translate natural language questions into precise queries, empowering stakeholders, from analysts to executives, to unlock insights without writing a single line of code. This article walks through every data source that Data Agent supports today and the configuration capabilities available for each data source.

## Overview

Data Agent supports the following data source categories:

Category
Artifacts
Query Language
Key Scenario

**SQL**
Lakehouse, Data Warehouse, SQL Database, Mirrored Databases
T-SQL
Structured analytics over relational and Delta Lake data

**Eventhouse**
Eventhouse KQL Database
KQL
Real-time intelligence and time-series analytics

**Semantic Model**
Power BI Semantic Models
DAX
Business logic, calculated measures, and curated metrics

**Graph**
Graph Model
GQL
Relationship-rich data exploration and graph analytics

**Ontology**
Fabric Ontology
Ontology-native
Domain knowledge and semantic context for data integration

**Azure AI Search**
Azure AI Search Index
Natural language + search
Unstructured data retrieval (PDFs, text, enriched content)

Tip

A single Data Agent can combine up to five data sources in any combination, letting you blend structured, real-time, semantic, and unstructured data in one conversational experience.

SQL

Eventhouse

Semantic Model

GQL

Ontology

Unstructured Data

### Supported Artifacts

- **Lakehouse**âDelta Lake tables surfaced through the SQL Analytics Endpoint.

- **Data Warehouse**âFull Fabric warehouse with T-SQL surface area.

- **SQL Database**âFabric-native SQL databases.

- **Mirrored Databases**âExternal databases mirrored into Fabric (for example, Azure SQL, Cosmos DB, Snowflake).

Every SQL source in Fabric comes with a **SQL Analytics Endpoint**, a high-performance, read-only T-SQL query surface over OneLake Delta data. Data Agent leverages a built-in **NL2SQL** service that:

- Translates the user's natural language question into a T-SQL query using user provided selected schema, instructions, and example queries.

- Validates the generated query against the schema selection to ensure it only references approved tables and views.

- Executes the query through the SQL Analytics Endpoint and returns human-readable results.

### Supported Artifacts

- **Eventhouse KQL Database**âFabric's Real-Time Intelligence store for streaming, event-driven, and time-series data.

Data Agent connects to the **Eventhouse KQL Database Endpoint**  and leverages Kusto's built-in **NL2KQL** enabling the following capabilities:

- The user's question is translated into a KQL query using the selected schema and any provided instructions or examples.

- The query is validated to confirm it only touches the approved schema entities.

- On approval, the query executes against the Kusto engineâoptimized for low-latency, high-throughput analytical workloads.

### Supported Artifacts

- **Power BI Semantic Models**âPublished datasets containing tables, relationships, measures, calculated columns, and hierarchies.

Every semantic model in Fabric exposes an **XMLA Endpoint**, which Data Agent uses to execute DAX queries. The built-in **NL2DAX** service:

- Translates natural language into a DAX query, leveraging the model's metadata (table descriptions, column synonyms, measure definitions, relationships).

- Validates the query against the selected schema.

- Executes via the XMLA Endpoint and returns formatted results.

### Supported Artifacts

- **Graph Model**âFabric graph artifacts that define node and edge schemas.

Graph Data Agent can run **GQL queries** and surface insights from your graph data sources in Fabric. To configure such an agent, add a graph model or graph queryset as your data source.

When the data agent runs GQL against a graph data source, the underlying Fabric Graph artifact will perform the query execution, incurring graph operation consumption.

### Supported Artifacts

- **Fabric Ontology**âA semantic layer that captures domain knowledge, entity definitions, and relationships.

After an ontology is configured in Fabric, it can be added as a data source to Data Agent. The agent uses the ontology to understand domain context and answer questions grounded in your organization's knowledge model.

### Supported Artifacts

- **Azure AI Search Index**âIndexes built in Azure AI Foundry over unstructured content such as PDFs, text files, and other enriched documents.

Data Agent connects directly to your Azure AI Search index using a resource URL. When a user asks a question, the agent sends the query (with the user's identity for access control) to the search index, retrieves the most relevant document chunks, and composes a final answer. Citations are included automatically when the index contains URL or file path fields.

## Configure Your Datasource

SQL

Eventhouse

Semantic Model

GQL

Ontology

Unstructured Data

### SQL Sources Supported Configurations

Configuration
Supported
Details

Schema Selection
â Yes
Select specific **Tables**, **Views**, and **Functions** to scope the agent.

Agent Instructions
â Yes
Guide the agent on when and how to route questions to this source.

Datasource Instructions
â Yes
Provide table descriptions, join logic, key column details, and business terminology to NL2SQL.

Datasource Description
â Yes
Description that helps the agent determine whether this data source is relevant to the user's question.

Example Queries
â Yes
Supply natural-language/SQL pairs so the agent can learn complex query patterns. Top examples are automatically retrieved via vector similarity.

### Eventhouse KQL Sources Supported Configurations

Configuration
Supported
Details

Schema Selection
â Yes
Select specific **Tables**, **Materialized Views**, **Functions**, and **Shortcuts** to scope the agent.

Agent Instructions
â Yes
Guide the agent on when and how to route questions to this source.

Datasource Instructions
â Yes
Provide context about tables, MVs, Functions, and Shortcuts to NL2KQL.

Datasource Description
â Yes
Description that helps the agent determine whether this data source is relevant to the user's question.

Example Queries
â Yes
Supply natural-language/KQL pairs to teach the agent complex aggregation and join patterns.

### Semantic Model Supported Configurations

Configuration
Supported
Details

Schema Selection
â Yes*
Select tables to expose. Column-level control is available when **Prep for AI** is configured in Power BI.

Agent Instructions
â Yes
Guide the agent on when to choose the semantic model to answer questions.

Datasource Instructions
â No*
Instructions are managed through **Prep for AI** (AI Instructions and Verified Answers) on the semantic model side. Data Agent honors them when present.

Datasource Description
â No
Semantic Models do not support data source descriptions.

Example Queries
â No*
Not currently supported for semantic models. Use Verified Answers in Prep for AI to include example DAX queries.

_*Semantic models are primarily configured through Prep for AI in Power BI, which offers AI Data Schemas, AI Instructions, and Verified Answers._

### Graph Model Supported Configurations

Configuration
Supported
Details

Schema Selection
â No
Graph doesn't allow a user to scope their Agent on specific nodes and edges.

Agent Instructions
â Yes
Guide the agent on when and how to route questions to this source.

Datasource Instructions
â Yes
Passed to the NL2GQL engine to guide query generation.

Datasource Description
â Yes
Description that helps the agent determine whether this data source is relevant to the user's question.

Example Queries
â Yes
Passed to NL2GQL to teach complex graph traversal patterns.

### Ontology Supported Configurations

Configuration
Supported
Details

Schema Selection
â No
Not supported for ontology data sources.

Agent Instructions
â Yes
Guide the agent on when to choose the semantic model to answer questions.

Datasource Instructions
â No
Not supported for ontology data sources.

Datasource Description
â Yes
Description that helps the agent determine whether this data source is relevant to the user's question.

Example Queries
â No
Not supported for ontology data sources.

### Unstructured Data Configurations

Setting
Details

Display Name
Custom name shown for the index in the agent experience.

Search Type
Choose from full-text, hybrid, or semantic search depending on your index configuration.

Number of Documents
Control how many documents are retrieved per query (recommended: 3â20).

Context / Description
Describe the index contents, key fields, and usage guidance to help routing.

Agent Instructions
Guide how the agent interprets search results and composes the final answer.

## Learn more

- Data Agent concepts

- Data Agent configurations

- Configuration best practices

- End-to-end tutorial

- Connect Azure AI Search Index

- Add a Power BI semantic model

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-26