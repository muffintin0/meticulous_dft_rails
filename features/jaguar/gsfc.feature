Feature: Query GSFC jobs 

		Scenario: Visit GSFC Jobs
			Given I am on the home page
			When I follow the link to GSFC_Jobs
			Then I should see GSFC jobs
			
		Scenario: Visit Single GSFC job
			Given I am on the GSFC_Jobs Page
			When I click "13-cocu-ch-b3-gs-fc"
			Then I should see the details of "13-cocu-ch-b3-gs-fc"