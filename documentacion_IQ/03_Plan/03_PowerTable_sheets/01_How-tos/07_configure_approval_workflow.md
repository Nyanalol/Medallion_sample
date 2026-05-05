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
					

				

			

		

	
					
# Set up approval workflows in PowerTable sheets

					
		
			 
				
					
		
			
				
			
			Feedback
		
	
				

		  
		

	 
		
			
				
					
				
				
					
						Summarize this article for me
					
				
			

			
			

		

	 
		
			
				In this article
			
		
	
					PowerTable sheets can connect to your database live for real-time data updates and synchronization. While row and column-level access permissions ensure data integrity, you can go one step further to secure your data by setting up approval workflows.

Important

This feature is in preview.

To ensure accuracy and correctness, users might need management's approval before making any changes to the data. There can be scenarios like multiple users accidentally changing the same data, entering incorrect values, and so on. Such scenarios can be streamlined by setting up an approval workflow process in PowerTable sheets.

## Approval flow sequence

When a change is submitted, the following actions occur:

- Approvers receive an email notification with a link to the table.

- The changes are highlighted in the table.

- Approvers review the changes in the **Approvals** tab and approve, reject, or request changes.

- The **author** is notified by email when a request is approved or rejected.

- Approvers can also request changes or provide suggestions.

- The author can apply or skip the suggested changes and resubmit the request for review.

- Once approved, the changes are synchronized with the source database.

The rest of this article explains each step of the approval workflow in detail.

## Set up approval workflow

Setting up an approval workflow in PowerTable sheets involves two steps:

- Enable approvals

- Select a method of choosing approvers

Once the workflow is enabled, every change made by users undergoes an approval process before getting saved and synced to the source.

### Enable approvals

You can turn on the approval workflow by following these steps:

Select **PowerTable > Approvals**.

Enable approvals by toggling the button for **Requires Approval for All Changes**.

### Select approvers

Next, select the approvers who review and approve any changes made to the table.

There are currently two ways to select approvers in PowerTable sheets.

- User-based approvals: Manually enter the email addresses of approvers or the IDs of Active Directory groups

- Rule-based approvals: Configure a rule-based system to identify the approvers

#### User-based approvals

User-based approvals is a straightforward method where you manually specify individuals who act as approvers.

Choose the option, **Specific users**.

Select specific users in the workspace who are responsible for reviewing and approving the changes. Search for them by entering their names or email addresses.

Select **Save**.

#### Rule-based approvals

Define approvers for specific columns or records in the table based on set rules and criteria. Enter the rule name, the filter criteria, and the designated approvers for that rule. You can set as many rules as required and assign corresponding approvers for each.

Note

Rules are executed in the order they're added, and can be reordered.

Start by adding a rule and assigning approvers:

Select **Users based on rules**.

Select **Add Rule** to add a rule.

Enter a name for the rule, configure the filter criteria, and add approvers for the criteria.

Select **Create**.

Next, add multiple filter criteria:

Select **Add filter** to add multiple filter criteria within a rule and combine them using **And** or **Or** operators.

To delete a filter criterion, use the bin icon.

Select **Create**.

You can now find the rule added to the list of rules. You can add more rules by selecting **Add Rule**.

Edit or delete rules as needed using the **Edit** and **Delete** options available next to each rule.

Finally, add a default approver:

In the final step, add one or more **default approvers** who review changes for records that don't meet the configured rules or criteria.

Select **Save** to apply the configuration.

## Multi-level approvals

Multi-level approvals require a change request to go through multiple levels of review before it's finally approved, ensuring compliance, oversight, and better decision-making. Each level corresponds to a different approver who reviews and approves the request at that level.

You can create up to three levels of approval using PowerTable sheets.

Enable multi-level approvals by toggling on the highlighted button.

Configure the required number of approval levels.

Enter the name of the approvers for each level.

Select **Save**.

					
		

	 
		

		

	
					
		
		
			
			
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
		2026-03-27