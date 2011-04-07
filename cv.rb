class Developer
  attr_reader :name, :age, :work_experience, :portfolio, :current_projects
  
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

  # Styling Output
  def colorize(text, color_code)
    "#{color_code}#{text}\e[0m"
  end
  def red(text); 
    colorize(text, "\e[31m"); 
  end
  def green(text); 
    colorize(text, "\e[32m"); 
  end
  def yellow(text); 
    colorize(text, "\e[33m"); 
  end
  def blue(text); 
    colorize(text, "\e[34m"); 
  end
  def purple(text); 
    colorize(text, "\e[35m"); 
  end

  # Output
  def to_s()
    puts blue("\r\nName and Age:")
    puts green(@name)
    puts green(@age)
    puts "\r\nWork Experience:"
    @work_experience.each do |w|
      puts "Language: #{w[:language]}"
      puts "Time: #{w[:time]}"
      puts "Worked on: #{w[:worked_on]}"
      puts "\r\n"
    end
    puts "\r\nPortfolio:"
    @portfolio.each do |p|
      puts "Site: #{p[:site]}"
      puts "Date: #{p[:date]}"
      puts "Client: #{p[:client]}"
      puts "Is online?: #{p[:is_online]}"
      puts "Description: #{p[:description]}"
      puts "\r\n"
    end
    puts "\r\nCurrent Projects:"
    @current_projects.each do |cp|
      puts "Name: #{cp[:name]}"
      puts "Technologies: #{cp[:technologies]}"
      puts "Description: #{cp[:description]}"
      puts "\r\n"
    end
  end
end

me = Developer.new('Juan Andres Peon',29)

# Work Experience
me.add_work_experience('PHP/Javascript','4 years','Freelance')
me.add_work_experience('PHP/Javascript','1.5 years','Snzia Networks - Spanish Company')
me.add_work_experience('PM/Lead Programmer/PHP/Javascript','10 Months','Replayful - www.replayful.com')

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
  "While dealing with a legacy site, it has been started from scratch. 
  It's a Stores/Coupons site with a gaming/social twist. I've been the Project Manager/Lead Programmer for this project, 
  while also doing the javascript after the loss (to Globant) of our front end developer. Went live (beta) on march."
  )

# Warning - Material X Rated
me.add_portfolio(
  'http://videospornolargos.es/',
  2010,
  'Project for Snzia Networks',
  true,
  "Porn site using a french provider. Had to extend the code of the site to enable SMS payments, 
  custom views and listing plus, google translation (incredibly funny), 
  adapt the code because of changes on the API. Had nothing to do with the design"
  )
me.add_portfolio(
  'http://pornofo.com/',
  2010,
  'Project for Snzia Networks',
  true,
  "Porn (Tube) site. Started from scratch, has a comprehensive admin and scrapes other tube sites and blogs to extract videos, 
  thumbnails and description. Categorizes the videos based on metatags or keywords found with a simple learning simple for unknown terms"
  )

# Current Projects
me.add_current_projects(
  'GoSave',
  'PHP using CodeIgniter and Dotrine as ORM/DBAL, Javascript using Mootools, Smartfox Server, Flash Games',
  "Site currently on beta (late march). Involves integration with Facebook, backend of the site and games, and javascript. 
  I've been in charge of dealing with the client (LA based), coordination of the team, setting up the staging environment, definition and migration to the production environment.
  I'm also the Senior backend developer and Javascript developer."
  )

# Output

me.to_s