# Introduction
This is our group project for The CS 3130 Mobile Development Course.  
The main idea of the project has been presented in the course but it is simply a study tool for students, making used of repetition to keep their memories intact

# Basic Features
The basic features to be implemented are:  
- [ ] A Register Screen : This is a screen where our users can register themselves into our database to make use of the app.
- [ ] A Sign-In Screen : This is a screen where our users can sign in with their user-name and password.
- [ ] Set Questions Feature : The app runs around the idea that users create questions to test their knowledge, so at least, users need to be able to set a group of questions to put through the interval rate algorithm.
- [ ] Set Answers Feature : After setting a question, users will need to be able to set a corresponding answer to the question.
- [ ] Index Card Function : Each set of one(1) question and its corresponding answers can be written on one(1) index card. The "Set Question Feature" will be in the front of the card, followed by a set of answers in the back of the card.
- [ ] Interval Rate Algorithm : An algorithm that will govern the rate at which the questions will be presented to the users. It will also govern any constraints to answering the questions (e.g. Time Limits). Users will have a bit of choices in choosing what they would like the algorithm to implements (e.g. how long the timer will be).
- [ ] Reminder Function : Using Interval Rate Algorithm, notifications for the question will be given to the user during the chosen time interval. Reminder will stop after the time limit ends or restart if the user doesn't remember the answer or answers incorrectly.
- [ ] Answer Questions Feature : Users will need to be able to answer the question they have set, it will be in Multiple Choice Question (MCQ) format and the supplied answer will be cross referenced with the preset answers.


# Project Timeline
We will approach this in using a weekly sprint, every week. We will focus on getting between 1-4 features implemented (1 for each group member).  
By doing this, we can easily approach all the features on this project in time for the submission date.  
Doing one feature a week will also prevent group members from getting bogged down by the workload of the project.

# External API Help
Since the questions would be provided by our users, we would not need to contact any external API to make this happen. We might need to make use of a mailing API to send information to users when necessary or we might make use of push notifications.

# Design Mock-up
Here is a basic design mock-up for the project, this is  all subject to change 

## Landing Page
<img src="/assets/Landing Page.jpg" alt="Landing Page Mockup"/>  
  
This shall be the very first page upon app load up.

## Register/Sign-In Page  
Here users can register themselves into the database or if they are already registered sign into the app.  

<img src="/assets/RegisterPage.jpg" alt="Register or Sign In Page"/>

## Home Page
This is the home page of the app, here users can create a new set of questions for the repetition algorithm.  
Users can also change the app settings (maybe the profile picture or timer on the algorithm, etc. This would be explored more further down the app).  
Users can also see a list of their previously set question sets. From here, they can execute the set, add or delete from it or delete the whole set entirely.  
  
<img src="/assets/HomePage.jpg" alt="Home/Main Page"/>

## Set Question Set Page
This is the page that comes up when the user clicks the "Set New Question List" Button.  
  
<img src="/assets/SetQuestionSetPage.jpg" alt="Set Question Set Page"/>

## View Question Set List
This page will have a list of question sets a user has created before. They will be a list of clickable widgets  with descriptive details as their content. Upon regular/long pressing any widget, a user will get the option to modify the set or execute the question set
  
<img src="/assets/ViewQuestionList.jpg" alt="View Question Set List Page"/>

## Question Set Execution Page

When a question set has been executed, this will be the mock-up for the design. 

<img src="/assets/QuestionSetExecutionPage.jpg" alt="View Question Set List Page"/>