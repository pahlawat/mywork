# Television tests

<b>To run tests</b>
 ## Run command- bundle exec cucumber --tags @new_tests

### This framwework uses Page Object model

I have created three main folders

1. Page Models
  * Pages
  * Page Assertions
  * Sections
  
2. Step definition

3. Support

Television Page is essentially broken down into various sections namely

1. Left Filter panel

2. Page container

3. Compare panel 

Page container is again broken down into various sections

1. Product item

2. Pagination

3. Filter sorter

Things to note:

1. I have defined each section as a class and have created methods which have been used in page assertions and step definitions
 
2. I have used Site prism https://github.com/natritmeyer/site_prism gem that gives a lot of ready made methods like set_url etc for the pages
 
3. Default browser- picking firefox as I couldnt get the chrome webdriver to work on my local machine as it was opening a pop up that I couldnt fix in time

4. I have automated the tests for television page feature file, though there are alot many that are important tests.

5. I looked at the entire which website and felt that this framwork would work best on the pages instead of a simple feature file/step definition framework as the UI is pretty much the same on different pages and this would avoid duplicating the code and defining the classes multiple times

