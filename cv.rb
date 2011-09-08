require './bash_styling.rb'

class Developer
  attr_reader :name, :age, :work_experience, :portfolio, :current_projects

  include Colorize,Styling
  
  def initialize(name,age)
    @name = name
    @age  = age
    @work_experience = Array.new
    @portfolio = Array.new
    @current_projects = Array.new
  end
  
  def add_work_experience(language,time,worked_on)
    @work_experience.push({:language => language, :time => time, :worked_on => worked_on})
  end
  
  def add_portfolio(site,date,client,is_online,description)
    @portfolio.push({:site => site, :date => date, :client => client, :is_online => is_online, :description => description})
  end
  
  def add_current_projects(name,technologies,description)
    @current_projects.push({:name => name, :technologies => technologies, :description => description})
  end


  # Output
  def to_s()
    headers = ["Name","Age"]
    rows = [@name,@age.to_s]

    puts blue("\r\nName and Age:")
    puts green(@name)
    puts green(@age)
    puts red("\r\nWork Experience:")
    @work_experience.each do |w|
      puts green("Language: ")+w[:language]
      puts green("Time: ")+w[:time]
      puts green("Worked on: ")+w[:worked_on]
      puts "\r\n"
    end
    puts yellow("\r\nPortfolio:")
    @portfolio.each do |p|
      puts green("Site: ")+p[:site]
      puts green("Date: ")+p[:date].to_s
      puts green("Client: ")+p[:client]
      puts green("Is online?: ")+p[:is_online].to_s
      puts green("Description: ")+p[:description]
      puts "\r\n"
    end
    puts purple("\r\nCurrent Projects:")
    @current_projects.each do |cp|
      puts green("Name: ")+cp[:name]
      puts green("Technologies: ")+cp[:technologies]
      puts green("Description: ")+cp[:description]
      puts "\r\n"
    end
  end
end

me = Developer.new('Juan Andres Peon',29)

# Work Experience
me.add_work_experience('PHP/Javascript','5 years','Freelance')
me.add_work_experience('PHP/Javascript','1.5 years','Snzia Networks - Spanish Company')
me.add_work_experience('PM/Lead Programmer/PHP/Javascript','1.5 years','Replayful - www.replayful.com')

# Portfolio
me.add_portfolio(
  'Internal App',
  2006,
  'Management system for a Pet Food Delivery',
  false,
  "Internal web app for management of products, stock, delivery boys, schedule deliveries, buys and sells"
  )
me.add_portfolio(
  'http://www.inmobiliariavinfor.com',
  2005,
  'Inmobiliaria Vinfor',
  true,
  "One of the first coded sites I've made, a long time ago, placed here because it's in process of beign refurbished"
  )
me.add_portfolio(
  'http://www.santacruz.com.uy',
  2007,
  'Santa Cruz - La Casa del Freno',
  true,
  "Still up and running including the catalog and a generator for a static downloadable version. Also in process of being refurbished"
  )
me.add_portfolio(
  'http://www.artigoo.com',
  2009,
  'Project for Snzia Networks',
  true,
  "Started this project while working for a spanish company. Most of the site for the beta version was developed by me, 
  though a few enhancements had been made since delivery over the end of 2009"
  )
me.add_portfolio(
  'http://www.gosave.com/',
  2010,
  'Project while working on Replayful',
  true,
  "While inheriting a legacy site, it was scrapped and started from scratch. 
  It's a Stores/Coupons site with a gaming/social twist. I've been the Project Manager/Lead Programmer for this project, 
  while also doing the javascript after the loss (to Globant) of our front end developer. Went live (beta) on march."
  )

# Warning - Material X Rated
me.add_portfolio(
  'http://videospornolargos.es/',
  2010,
  'Project for Snzia Networks',
  false,
  "Porn site using a french provider. Had to extend the code of the site to enable SMS payments, 
  custom views and listing plus, google translation (incredibly funny), 
  adapt the code because of changes on the API. Had nothing to do with the design"
  )
me.add_portfolio(
  'http://pornofo.com/',
  2010,
  'Project for Snzia Networks',
  false,
  "Porn (Tube) site. Started from scratch, has a comprehensive admin and scrapes other tube sites and blogs to extract videos, 
  thumbnails and description. Categorizes the videos based on metatags or keywords found with a simple learning simple for unknown terms"
  )

# Current Projects
me.add_current_projects(
  'GoSave',
  'PHP using CodeIgniter and Doctrine as ORM/DBAL, Javascript using Mootools, Smartfox Server, Flash Games',
  "Site currently on beta (late march), involves heavy integration with Facebook (using both Javascript and PHP SDK's), secure backend for the games considering it supports 2 currencies since users can cash real (physical) rewards and
  interacts with 3 providers of stores/coupons. 
  I've been in charge of dealing with the client (LA based), coordination of the team's workload and planning, architectural design, setting up the staging environment, definition and migration to the production environment.
  I'm also the Senior backend developer and Javascript developer. 
  The current team involves 2 backend developers (1 senior also working on Javascript and 1 junior), 1 HTML/CSS guru, 2 flash developers (1 senior and 1 guru), 1 designer, 1 tester/QA specialist and me (PM/Tech Lead/Senior Backend/Javascript Dev)"
  )

# Output

me.to_s