# README

## The repository of Group 3 for Billing-Revenue-Management project

### Scrum roles

Obasuyi Edokpolor : Project manager

koko nestor Afantchao : scrum master

Ming Wu : Team Lead && Developer

Matthew Kehoe : Developer

## Ruby version

        Ruby '2.6.6'

        Rails 6.0.3.4

## System dependencies

        Development: macOS Catalina Version 10.15.17(19H2)

        Test: macOS Catalina Version 10.15.17(19H2)

        Delopment: Any systems

## Run the whole application

        1. go to the root folder of the app

        2. bundle

        3. rails server

        4. visit localhost://3000

## Product Vision

        1. Create a User Interface for the Billing/Revenue Management Application

        2. Collect the insurance information from the front desk via EHR

        3. Verify that the insurance is active

        4. We collect the summary note from the provider( detailed information about the care of the patient)

        5. Create a microservice to quickly lookup the CPT/ICD-10 codes(These are the codes associated with the different diagnosis and procedures)

        6. Bill the insurance company according to the summary note, based on each CPT codes( Codes that are related to the treatment/care of the patient)

        7. Followup with the insurance to make sure the bill was paid

        8. Expose a URI to provide access to the front desk team, to retrieve patient account information

## A near vision for the first iteration of the product:

        1. Create a User Interface to retrieve the patient information typically the Insurance details (Full Name, Insurance Company, Policy Number, Date Of Birth and Address

        2. Verify the Insurance details

## Stakeholder types:

        1. Patients

        2. Hospitals 

        3. Insurance Companies

        4. Medical billers

        5. Product managers 

        6. Professors

## A detailed user persona for your real stakeholder

#### Patient Bob

        Bob wants to check the bill for his hospital visit

        Bob is not familiar with the use of computer

## Insurance Agent Mary

        Mary wants to verify the patients information/Bill is processed correctly

        Mary Wants to verify the procedure rendered to the patient

## Medical Biller Greg

        Greg wants to be able to generate correct claims for patients and send it correctly to the insurance company

        Greg will want a reliable application to accomplish his goals as acurate and fast as possible.

## The URL of the initial product backlog:
        https://www.pivotaltracker.com/n/projects/2464478
        Github: https://github.com/JamesFifth/billing_app_rails.git
        Heroku: https://superbilling-app-by-mingwu.herokuapp.com/
