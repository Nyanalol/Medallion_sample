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
					

				

			

		

	
					
# Best practices for configuring your data agent

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					This article outlines best practices for configuring a data agent to deliver accurate, relevant, and helpful responses to user questions. By setting clear agent-level and data sourceâspecific instructions, you can guide how the agent interprets queries, selects data sources, and generates responses. You'll learn how to define the agent's objective, prioritize data sources, incorporate key terminology, and provide query logic for common scenarios. These configuration tips help ensure the agent performs reliably across diverse data environments and user needs.

To explore the different types of data agent configurations, see data agent configurations.

## 1. Get your data AI ready

To ensure the data agent can generate accurate queries, itâs important that your data sources, tables, and columns use clear and descriptive names. Avoid vague or generic labels like Table1, col1, or flag, which can make it difficult for the agent to interpret user intent.

â**Less effective:**

- Table Names: Table1, Table2

- Column Names: col1, status, flag

â**Better:**

- Table Names: CustomerOrders, ProductCatalog, SalesTransactions, OrderItems

- Column Names: customer_email_address, order_submission_date, product_unit_price

Descriptive naming helps the agent understand the data structure and improves the quality of generated queries.

## 2. Create specialized agents for specific domains

For better accuracy and relevance, design data agents that are focused on a specific domain or use case rather than trying to handle a broad range of questions. Specialized agents can be optimized with targeted instructions, relevant data sources, and domain-specific terminologyâmaking them more reliable and effective.

â **Less effective:** A general-purpose data agent that answers a wide variety of customer-related questions across different user personas

â **Better:** A data agent tailored to support the leadership team by combining insights from multiple data sources for meeting preparation

By narrowing the agentâs focus, you improve its ability to generate precise responses and reduce ambiguity in query interpretation.

## 3. Minimize the data source scope

Include only the data sources necessary to answer the expected user questions. Within each data source, select only the specific tables and columns that are relevant to your use case. A more focused configuration improves the agentâs ability to generate accurate and efficient queries.

â **Less effective:** Connecting an entire Lakehouse or model with all tables and columns

â **Better:** Selecting only the essential tables and columns required for common queries

Tip

For optimal results, limit the number of tables to **25 or fewer** for a given data source.

## 4. Be specific about what to do, not just what not to do

Rather than only stating what the agent should avoid, provide clear guidance on the correct approach. This helps the agent respond more effectively and avoids ambiguity in handling edge cases.

â **Less effective:** Do not provide outdated pay information or make assumptions about missing data.

â **Better:** Always provide the most recent pay information available from the official payroll system. If the pay is missing or incomplete, inform the employee that you cannot locate current records and recommend they contact HR for further assistance.

## 5. Define business terms, abbreviations, and synonyms

To ensure the data agent interprets questions correctly, define any terms that may be ambiguous, organization-specific, or domain-specific. These definitions help the agent apply consistent logic and generate accurate responsesâespecially when user questions reference internal terminology or similar concepts.

### Examples of what to define

- Similar concepts: "calendar year" vs. "fiscal year"

- Common business terms: "quarter", "sales", "SKU", "shoes"

- Abbreviations or acronyms: "NPS" (Net Promoter Score), "MAU" (Monthly Active Users)

### Where to place definitions

- **Agent-level instructions**: Use this for definitions that apply across all data sources and queries (e.g., what a "quarter" represents).

- **Data source instructions**: Use this for definitions that are specific to how a term is used within a particular dataset (e.g., "sales" defined differently across systems).

## 6. Use leading words to nudge query generation

Within your data source instructions, you can include hints or fragments of SQL/DAX/KQL syntax to guide the model toward generating queries in a specific format. These "leading words" help the agent infer the correct logic when translating natural language into code.

â **Less effective:**

Find all the products with names containing "bike".

â **Better:**

Find all the products with names containing "bike"

LIKE '%bike%'

Including syntax fragments such as LIKE '%...%' helps the model recognize that a pattern-matching clause is expected in the query. This technique improves the accuracy of the generated SQL, especially when handling partial matches, filters, or joins.

## 7. Write clear, focused instructions; avoid unnecessary detail

Instructions should be concise and purposeful. Include only the information needed to help the agent generate accurate responses. Avoid vague, outdated, or overly broad content that introduces confusion or dilutes the agent's focus.

â **Less effective:**

`
You are an HR data agent who should try to help employees with all kinds of questions about work. You have access to many systems, like the HRIS platform, old payroll databases from previous vendors, archived employee files, scanned PDF policy documents, and maybe even some spreadsheets that HR used in the past. If someone asks about their pay, you might want to look in one of the old systems if needed. Also, sometimes data isn't updated immediately, so just do your best. Remember that the company reorganized in 2017, so department names might be different before then. Try to be friendly, but also make sure you donât seem robotic. Sometimes HR policies change, so answers might not always be the same depending on the date. Just explain if something seems complicated.

`

**Why is this less effective?**

- Scope is too broad ("all kinds of questions about work")

- References outdated or unreliable sources (e.g., "old payroll databases")

- Lacks prioritization of data sources

- Introduces unnecessary historical context

- Creates ambiguity with phrases like "just do your best"

- Lacks clear guidance for handling missing or complex data

â **Better:**

`
You are an HR Assistant Agent responsible for answering employee questions about employment status, job details, pay history, and leave balances.  
Use the official HR data warehouse to retrieve current and accurate records.  
If data is missing or unclear, inform the user and recommend they contact HR for further support.  
Keep responses concise, professional, and easy for employees to understand.

`

**Why is this better?**

- Clear agent scope and responsibilities

- References the correct data source without overloading technical details

- Provides clear fallback behavior

- Establishes tone and communication style

- Leaves table-level specifics to the data source instructions

## 8. Write detailed data agent instructions

Agent instructions define how the agent interprets user questions, selects data sources, and formats responses. Use this section to clearly describe the agent's role, expected behavior, tone, and how it should handle different types of queries. Include specific details about the intended use cases, preferred data sources, and fallback behavior when information is missing.

Tip

When writing your agent instructions, ask yourself: Would someone unfamiliar with these data sources be able to understand which sources to use and how to use them based on the instructions? If not, revise the instructions to include the missing context.

â **Less effective:**

`
You are an agent that helps with HR topics.  
Find answers if possible.  
Try not to give wrong information.  
If you cannot find something, you can tell the user to check elsewhere.  
Answer employee questions about work, pay, and other topics using available systems.  
Keep responses professional.

`

â **Better:**

`
## Tone and style
Use clear, simple, and professional language.  
Sound friendly and helpful, like an internal HR support agent.  
Avoid technical jargon unless it's part of the business terminology used in the data.

## General knowledge
You are an HR Assistant Agent designed to help employees access accurate information about their employment, benefits, and pay.  
Only answer questions using the official HR data sources provided.  
If multiple records exist, prioritize the most recent and most official source.  
Do not guess or assume answersâif information is missing or unclear, advise the employee to contact HR directly.  

## Data source descriptions
- **Employee Data Warehouse**: Contains employment records including status, role, start date, and department.
- **Payroll System**: Contains pay history, compensation details, and tax withholding information.
- **Benefits Enrollment Database**: Includes information about health insurance, retirement plans, and other employee benefits.
- **HR Policy Lakehouse**: Stores official company policies, including holidays, leave policies, and onboarding documents.

## When asked about
- **Employment status (e.g., active, on leave, terminated)**: Use the *Employee Data Warehouse*  
- **Pay history or compensation**: Use the *Payroll System*  
- **Benefits and enrollment details**: Use the *Benefits Enrollment Database*  
- **Company holidays and leave of absence policies**: Use the *HR Policy Lakehouse*

`

## 9. Provide detailed data source instructions

Data source instructions should be specific, structured, and descriptive. They guide the agent in forming accurate queries by defining how the data is organized, which tables and columns are relevant, and how relationships between tables should be handled.

Use this section to describe:

- The purpose of the data source

- Which types of questions it is intended to answer

- Required columns to include in responses

- Join logic between tables

- Typical value formats (e.g., abbreviations vs. full names)

Tip

Imagine a new team member using this dataset for the first timeâwould they be able to write a correct query just by following these instructions?

If not, add the missing context, clarify assumptions, or include example queries to guide them.

Tip

The data agent cannot see individual row values before executing a query.

To guide filtering logic, include examples of typical values and formatsâfor example, specify whether a State column uses abbreviations like "CA" or full names like "California".

â **Less effective:**

`
## General instructions
Use the EmployeeData warehouse to find answers about employees.  
Try to get useful employee details when needed.

### Employment status
You can use the EmployeeStatusFact table.  
Join to EmployeeDim if necessary.

`

â **Better:**

`
## General instructions
Use the EmployeeData data warehouse to answer questions related to employee details, employment status, pay history, and organizational structure.

When generating queries:
â¢ Use EmployeeDim as the primary table for employee details.  
â¢ Always include the following columns in the response (if available):  
  - EmployeeID  
  - EmployeeName  
  - EmploymentStatus  
  - JobTitle  
  - DepartmentName  
â¢ Join other tables to EmployeeDim using EmployeeID unless otherwise specified.  
â¢ Filter for the most recent records when applicable.  

Example values:
- EmploymentStatus: "Active", "On Leave", "Terminated"  
- DepartmentName: "Finance", "HR", "Engineering"  
- State: Use U.S. state abbreviations like "CA", "NY", "TX"

## When asked about

When asked about **employee status**, use the `EmployeeStatusFact` table.  
Join it to `EmployeeDim` on `EmployeeID`.  
Filter by the most recent `StatusEffectiveDate` and return the following columns: `EmploymentStatus`, `StatusEffectiveDate`, `EmployeeName`, and `DepartmentName`.

When asked about **current job title or department**, use the `EmployeeDim` table.  
Return `JobTitle` and `DepartmentName`.  
If multiple records exist, filter for the record where `IsCurrent = True`.

`

## 10. Use example queries to express complex query logic

Use example queries to help the data agent understand how to construct accurate queriesâespecially when the logic is complex or nuanced. These examples act as templates that the agent can generalize from, even if the userâs question isnât an exact match.

- Include example queries for common or representative question types.

- Focus on examples where the query logic involves filtering, joins, aggregations, or date handling.

- Keep the structure clear and well-formatted, using the correct syntax for your data source (SQL, DAX, or KQL).

- You do not need to match user questions verbatim; examples should demonstrate intent and structure.

Tip

Providing a well-formed query is often clearer and more efficient than trying to explain complex logic through text alone.

### How example queries are used

For each user question, the data agent performs a **vector similarity search** to retrieve the top 3 most relevant example queries. These are then passed into the agentâs augmented prompt to guide query generation.

## Next steps

- Data agent concept

- Data agent scenario

- Overview of data agent configurations

- Adapt an iterative process to developing data agents

					
		

	 
		

		

	
					
		
		
			
			
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
		2025-08-15