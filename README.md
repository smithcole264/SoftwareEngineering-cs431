# CareerFairTracker

## What is the purpose of this project?
The purpose of this project is to track attendance by creating a seamless check-in system that allows students attending career fairs to check-in at company booths by scanning a QR code.

### What is the problem?
Many recruiters at career fairs have students input information on devices or only take physical copies of resumes and cover letters. This can bog down lines, which increases wait times and decreases the amount of students that recruiters can talk with, as well as the amount of companies that students can talk with. For recruitors, they only have the opportunity to learn about students in one-on-one conversations. Sometimes, students can be in a major or class year that the company is not recruiting for, which wastes the tim

### What is the solution?
Create and maintain a database of students, their majors, and any other pertinent information. Allow these students to be able to check-in with recruiters at CSCE career fairs. Communicate to and deny students with non-relevant majors and class years from "checking-in" so recruiters and students don't have their time wasted.

## Why does this matter?
The CSCE Career Fair is a large event that is a prime opportunity for students to seek employment and explore career options. Companies are able to send employees to meet many qualified employee prospects individually and in-person. By making the CSCE Career Fair a more seamless experience for students and recruiters, both parties can utilize their time to its fullest potential and maximize the opportunity of such a large on-campus event.

## How to use this app:
In your browser, type and enter this URL to the Heroku-hosted web page: (TODO: Insert Heroku app container URL)

## Getting Started:

## Setting up Ruby on Rails on Your Windows Computer:
There is several methods to get ruby on rails working on your computer but one of the easiest ways to install it on your windows machine. Below will be a step by step guide for getting it setup in order to run our project on your local machine.
  1.	You will need to download the 7-zip file for ruby 2.6.5 for your computer at                       https://rubyinstaller.org/downloads/ 
  2.	Unzip this file to a place you plan on storing this file
  3.	Know you must set up the path to this file, go into the file you unzipped then go to the bin       file and add that path using the environment variables through the control panel
  4.	You want to download and install MSYS2 from https://www.msys2.org/
  5.	Open msys2 and type “pacman -Sy pacman” (do not include quotations), this will ask you if you       want to proceed, say yes
  6.	Go to a command prompt and type “ridk install”, this will bring up a ruby installer page in         your command prompt giving you multiple options, you will select the third option and               continue
  7.	You want to set up sqlite3 and nokogiri by typing these commands and letting them execute,         “ridk exec pacman -S mingw-w64-x86_64-sqlite3”, gem install sqlite3 –platform ruby”, ridk           exec pacman -S mingw-w64-x86_64-libxslt”, gem install nokogiri –platform ruby -- --use-             system-libraries”
  8.	Some versions of sqlite3 don’t work for windows so to work with this you want to type “ridk         exec pacman -S mingw-w64-x86_64-dlfcn”
  9.	For our project you need Webpacker, this requires node.js and yarn, you cant install these in       command prompt because they are not accessible by rails so you have to go to the webpages to       download, https://nodejs.org/en/ and https://yarnpkg.com/en/docs/install#windows-stable
  10.	Once these are installed you want to close and reopen command prompt so they will update and       work correctly
  11.	You will need rubygems in order to download and update gems via the command prompt,                 https://yarnpkg.com/en/docs/install#windows-stable install the zip file and unzip it
  12.	cd into the file that you just unzipped and type “ruby setup.rb”, this will install rubygems
  13.	Now you have to install rails, in order to do this you will type “gem install rails –no-           document” and rails will install
  14.	You also need bundler so you will type “gem install bundler –no-document” and bundler will         install
  15.	You want to make sure all of your gems are working properly, in order to do this you are           going to check their versions, you will type “ruby -v”, “rails -v”, “bundler -v”, “yarn -v”,       “node -v”; if all of these match the versions that we specified above then you are ready to         run our program locally
  16.	You can clone our project via github and once you have that you will cd into our project and       type “bundle install”, this will download all of the gems you need
  17.	Type “rails db:migrate”, then “rails db:seed”, and finally “rails server”, this will get you       set up and running the server on your machine.
  18.	Finally, in order to see the project, go to your web browser and enter the URL localhost:3000
  
This will allow you to see our project working on your local machine, we are also going to have a heroku link that allows you to connect to the server without all of these steps but you will not be able to see all of the code and add to the project if you wish to do so.

