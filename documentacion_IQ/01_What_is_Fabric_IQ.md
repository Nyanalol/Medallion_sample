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
					

				

			

		

	
					
# What is Fabric IQ (preview)?

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Fabric IQ (preview) is a workload for unifying data sitting across OneLake and organizing it according to the language of your business. The data is then exposed to analytics, AI agents, and applications with consistent semantic meaning and context. This page provides an overview of the Fabric IQ workload, the items it contains, and how those items work together to deliver unified data and semantics in Microsoft Fabric.

Important

This feature is in preview.

As a workload in Fabric, Fabric IQ is a collection of capabilities targeted to the common functionality of modeling an environment with unified language. The items grouped into the Fabric IQ workload include:

- Ontology (preview)

- Plan (preview)

- Graph (preview)

- Data agent (preview)

- Operations agent (preview)

- Power BI semantic models

For more information about the role of each item in the Fabric IQ workload, see the section Items in Fabric IQ (preview).

Note

Fabric items can be part of multiple workloads. Several of the items in Fabric IQ are shared with other Fabric workloads like Real-Time Intelligence and Power BI, since they are relevant to the intent of multiple workload scenarios.

## Why use Fabric IQ (preview)?

Fabric IQ (preview) enables the following benefits:

- **Unification of data:** Unify analytical and operational data, by combining data from various sources across OneLake (like lakehouses, eventhouses, and Power BI semantic models) into a single consistent model. Fabric IQ can also unify external operational data using OneLake shortcuts, referencing it in place without copying or building ETL pipelines.

- **Consistent language across tools:** Provides a single definition of a concept (like _Customer_, _Material_, or _Asset_) that drives how Power BI, notebooks, and agents interpret data.

- **Faster onboarding:** Provides new dashboards and AI experiences with consistent business meaning, as business concepts only need to be declared once.

- **Governance and trust:** Reduces duplication and inconsistent definitions across teams by enforcing clear semantics, while constraints improve data quality.

- **Cross domain reasoning:** Represents relationships between concepts with graph links, and allows you to traverse relationships (like _Order > Shipment > Temperature Sensor > Cold Chain Breach_) to explain outcomes.

- **AI readiness and decision-ready actions:** Provides structured grounding for copilots and agents, so answers reflect your enterprise language as defined in your ontology. Ontology also defines rules through integration with Fabric Activator, enabling governed, real-time actions (like alerts or notifications) when conditions are met. Because business rules and constraints live in the ontology, agents can move beyond answers to safe, auditable actions.

## Where Fabric IQ (preview) fits in Fabric

Here's how Fabric IQ (preview) implements key Fabric capabilities:

- **Ingest and store:** Builds on data from lakehouse tables, eventhouse streams, and existing Power BI semantic models. Fabric IQ scenarios can also consume data shared across organizational boundaries through OneLake external data sharing, extending visibility to governed data in other tenants. The plan (preview) item uses OneLake mirroring and OneLake shortcuts to integrate data sources while minimizing ETL, keeping data in place and preserving governance.

- **Model and represent semantics:** The ontology (preview) item offers modeling capabilities by defining entity types, properties on entity types, and relationship types. Optionally bootstrap an ontology structure from existing data sources and models, or create your own. Then, bind ontology features to data sources, and explore them in a navigable graph that is built automatically.

- **Analyze and visualize:** The Fabric IQ items of ontology (preview) and graph work together to provide a visual graph and query experience based on your business concepts. You can also build ontologies based on your Power BI semantic models so the same terminology can be used for analysis across items, or use the ontology to inform power domain aware agents.

- **Operate and govern:** You can version, validate, and govern your ontology definitions. Governance, lineage tracking, and auditing apply consistently across all data sources, including data accessed through OneLake shortcuts and cross-tenant shares. You can also monitor ontology health through Fabric monitoring tools. Plan (preview) adds workflow approvals and detailed audit trails for writeback operations and plan revisions.

## Items in Fabric IQ (preview)

Fabric IQ (preview) is a Fabric workload that contains the following items. Some of these items are shared with other Fabric workloads, and items can work together to accomplish the shared Fabric IQ vision of unified data and semantics.

- _Ontology (preview)_ is an item for the enterprise vocabulary and semantic layer that unifies meaning across domains and OneLake sources. It defines entity types, relationships, properties, and conditionâaction rules (through Fabric Activator). Then, the ontology binds all of these definitions to real data so that downstream tools share the same language. Ontologies are the core item for defining a common language in the Fabric IQ workload.

- _Plan (preview)_ allows you to integrate planning, visualization, analytics, and data management on a single platform. Plan is a unified no-code platform for collaborative planning, reporting, analytics, data integration, and management. It enables organizations to work from a consistent data foundation, allowing business users to plan, analyze, and report without switching between multiple tools.
_Graph (preview)_ offers native graph storage and compute for nodes, edges, and traversals over connected data. It's good for path finding, dependency analysis, and graph algorithms. Graph is integrated with the ontology item and brings a visual representation of your business concepts and relationships to the Fabric IQ workload.

- This item is also part of the Real-Time Intelligence workload.

_Data agent (preview)_ allows you to build your own conversational Q&A systems using generative AI. In Fabric IQ, data agents can connect to your ontology as a source, enabling them to understand your business concepts and use these terms when answering questions.

- This item is also part of the Data Science workload.

_Operations agent (preview)_ lets you create an AI agent to monitor real-time data and recommend business actions. It supports the Fabric IQ workload vision of intelligent agents that can reason across business concepts while being aware of terminology.

- This item is also part of the Real-Time Intelligence workload.

_Power BI semantic model_ is a curated analytics model that's optimized for reporting and interactive analysis with measures, scorecard hierarchies, and relationships for visuals and DAX. Semantic models are another way to represent the structure, language, and relationships of your business data, and ontologies can be generated directly from them to keep that language consistent across Fabric experiences.

- This item is also part of the Power BI workload.

### Choose the right item

This section contains guidance for choosing the right tools for your scenario from the modeling options in Fabric. The following table includes modeling-related items from Fabric IQ and Real-Time Intelligence.

Item
When to use

Ontology (preview) in Fabric IQ
Use when you need cross-domain consistency, governance, and AI/agent grounding, and you want to reason across processes.

Graph (preview)
Use when relationship-heavy questions (like impact chains, communities, and shortest paths) dominate your decision making, and you need graph-native performance. Graph supports GQL-style pattern matching and shortest-path queries for relationship-heavy questions.

Power BI semantic model
Use when business users need trusted KPIs and fast visuals with dimensional modeling, calculations, and governed datasets for self-service BI.

Digital twin builder (preview) in Real-Time Intelligence
Use when you need operational context, stateful twins, scenario analysis, or what-if simulation tied to real assets and signals.

### Item relationships

This section describes how items work together or relate to one another.

- **Ontology (preview) and semantic model:** By using these Fabric IQ items together, you can get the benefits of both representations while defining enterprise conceptsâlike _Customer_, _Shipment_, and _Breach_âonly once. Generate or align Power BI semantic models so that terminology and key performance indicators (KPIs) stay consistent across reports.

- **Ontology (preview) and Graph:** Ontology declares which things connect and why. Graph stores and computes traversals, like "Find shipments exposed to risky routes and related breaches." These items work together in Fabric IQ by integrating the graph experience into ontology items.

- **Ontology (preview) and data/operations agents:** Ontology grounds agents in shared business semantics and rules. As a result, agents can retrieve relevant context, reason across domains, and recommend or trigger governed actions.

- **Plan (preview) and semantic model:** Plan (preview) can connect to existing semantic models, allowing their dimensions and measures to be used in planning sheets for seamless plan-versus-actuals analytics. You can also create dynamic forecasts directly on your semantic model and update them as new actuals become available.

- **All items:** Power BI semantic models present trusted KPIs. Ontology defines the language for your business, in a way that's consistent with existing semantic model representations. Plan connects data to decisions and helps you translate insights to actions efficiently. Graph powers dependency and impact analysis. Data and operations agents enable intelligent agent interactions that are aware of your business concepts. Real-time eventhouse streams can feed the Operations agent with live signals, while the Plan item translates those signals into coordinated actions. Together, these items form the Fabric IQ workload that connects data, semantics, planning, analysis, and AI-driven actions.

## Next steps

Learn more about the items that make up Fabric IQ:

- What is ontology (preview)?

- What is plan (preview)?

- What is Fabric Graph (preview)?

- What is the Fabric data agent (preview)?

- Getting started with operations agents

- Semantic models

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-04-10