# encoding: utf-8
#1. All registered users; 
#2. Users that been registered but don’t have any activity (purchases\sold watches).  
#3. Users that only buy watches. 
#4. Users that only sell watches. 
#5. Users with last activity more than X days ago


namespace :mailchimp do 
  namespace :export do

    desc 'All registered users' #
    task all: :environment do
     puts "1"
     #Список всех пользователей и загрузить его в майлчимп



    end
    
    desc 'Users that been registered but dont have any activity' #
    task noactive: :environment do
        puts "2"
        #Список пользователей у которых небыло покупок
        
        
        
    end
    
    desc 'Users that only buy watches' #
    task buyers: :environment do
             puts "3"
             #Список пользователей у кторых только покупки
        
    end
     
    desc 'Users that only sell watches'
    task sellers: :environment do
         puts "4"
         # Список пользователей у которых только продажи
         
         
    end
    
    desc 'Users with last activity more than X days ago'
    task xday: :environment do
         puts "5"
         # Список пользователей которые не заходили на сайт X дней
         
         
         
    end
  end

end



