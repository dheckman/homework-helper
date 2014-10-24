# I need help!
Make a Rails application that keeps track of who needs a hand with homework. Read this whole post to the bottom before starting.

This application has user registration and authentication. You can roll this yourself or use a third-party library like Devise.

* There should be three pages in the application:

    * First, the new problem page. You must enter a brief description of your problem, and a description of what you've already tried. When you submit this, it is added to the list of open problems. You receive an email with a link to your problem.

    * Next, the problem list page, which is the root page. All open problems are shown in chronological order of when they are added. Each problem shows the entrant's name, a truncated description, and the date/time it was added. Each problem has a link to go to the individual problem page for that problem.

    * Last, the individual problem page. This page shows the entrant's name, the problem description, and a description of what they've tried. There should be a list of existing notes on the problem and the ability to add a new note. Each note belongs to a user. When a note is created that isn't created by the problem's owner, the owner gets an email.

*On the individual problem page, the owner can mark the problem as resolved or closed. After that, it will not show up on the problem list page.

You will work in teams, listed below.

Geoff
Will

Vance
Maria

Kheang
Mike

Torey
Noah

Nick
Greg

Peter
DeeDee

Rebecca
David

Danielle
Jose

== Expectations

All code will have tests. Model and controller tests are required. As for your views, integration tests with Capybara are encouraged but not required.

This assignment will be complete on Monday morning. It should be pushed to Heroku with email working, although if you are having Heroku problems, that will not disqualify you. Any group not complete on Monday will have a chat with Jessica and I and it will not be your favorite chat.

When finished, post a link to your GitHub repo and Heroku application as a comment on this post.
