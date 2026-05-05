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
					

				

			

		

	
					
# Operations agent capacity and billing

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					Operations agents in Microsoft Fabric Real-Time Intelligence help you automate monitoring and response actions based on data changes. To use operations agents effectively, you need to understand their capacity and billing aspects. This article explains how Real-Time Intelligence measures, bills, and reports operations agent usage.

All operations in Fabric consume capacity units (CUs). In operations agents, the system aggregates one or more consumed CUs per agent based on its operations. You can find detailed usage reports in the Microsoft Fabric Capacity Metrics app or through the Azure billing system. These reports provide insights into CU consumption by operations agents, helping you monitor and manage your usage effectively.

## How Real-Time Intelligence measures operations agent usage

The following sections cover dedicated operations, usage categories, and the pause feature of Fabric. The information in these sections can help you manage agent use and associated costs.

### Dedicated operations

**Copilot in Fabric** is a dedicated operation that occurs when the operations agent uses the large language model (LLM). For example, you use AI-driven suggestions or automation to set up, modify, or manage the operations agent's rules and actions.

**Operations agent compute** refers to the cost of the agent processing and monitoring data in the background. This cost includes the compute needed to evaluate rules and conditions, along with any extra costs from data sources that provide the required data.

**Operations agent autonomous reasoning** refers to the LLM processing that happens when a condition is met. The agent analyzes the data, generates recommendations, and sends messages to the user for approval.

**OneLake storage** refers to the cost associated with retaining Fabric items and events. Data monitored by the agent is stored within Fabric for 30 days, incurring the applicable OneLake storage charges, which are billed per GB per hour.

### Usage categories

Operations agent consumes capacity based on the following factors:

**Background usage**: Refers to all operations, including direct interactions, with the operations agent. Copilot in Fabric and AI operations are treated as background tasks. For more information, see Copilot in Fabric Consumption. These operations are throttled only if the capacity exceeds its resource limits for 24 hours. In this case, background tasks are rejected, and the agent's processing halts. For details, see Throttle triggers and throttle stages.

Azure metric name
Fabric operation name
Capacity unit rate

Operations agents compute capacity usage CU
Operations agent compute
0.46 CUs per vCore hour

Copilot and AI capacity usage CU
Copilot in Fabric
100 CUs per 1,000 input tokens; 400 CUs per 1,000 output tokens

Operations agents autonomous reasoning capacity usage CU
Operations agent autonomous reasoning
400 CUs per 1,000 input tokens; 1,600 CUs per 1,000 output tokens

Not applicable
OneLake storage
Billed per GB per hour under OneLake storage

**Other CU consumption**: Operations agents can drive CU consumption from other Fabric items or products, such as the eventhouse being monitored:

**Configuration phase**: Copilot in Fabric incurs usage while you generate the agent's playbook. Eventhouse usage arises from queries to identify fields and rules to monitor. Storage costs apply for saving the agent's configuration.

**Active monitoring**: After you activate the agent, the agent runs queries and tracks rules in the background, consuming the "operations agent compute" meter. Eventhouse charges apply for periodic queries, and storage costs cover cached query results and configurations.

**Condition met**: When conditions are met, the agent uses its LLM for summarization and recommendations, consuming the "operations agent autonomous reasoning" meter. Approved actions invoke Power Automate flows, which might incur separate licensing costs based on your Power Automate plan.

### Pause and resume activity in your capacity

Microsoft Fabric allows administrators to manage costs by pausing their capacities when they aren't in use. This feature helps organizations save on expenses during downtime. When work needs to resume, you can reactivate the capacity seamlessly. For more information, see Monitor a paused capacity in Microsoft Fabric and Pause and resume your capacity in Microsoft Fabric.

## Reporting and visibility

You can find detailed usage reports in the Microsoft Fabric Capacity Metrics app or through the Azure billing system. These reports provide insights into CU consumption by operations agents, helping you monitor and manage your usage effectively. To learn more about accessing and interpreting these reports, see Understand your Metrics app or Understand your Azure bill.

## Considerations and limitations

Consumption rates can change at any time. Microsoft makes reasonable efforts to provide notice through email or in-product notification. Changes take effect on the date stated in Microsoftâs Release Notes or in the Microsoft Fabric blog. If a change to a Microsoft Fabric workload consumption rate significantly increases the CUs required to use a particular workload, you can use the cancellation options available for the chosen payment method.

## Related content

- Operations agent overview

- Understand your Azure bill

- Understand your Metrics app

					
		

	 
		

		

	
					
		
		
			
			
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