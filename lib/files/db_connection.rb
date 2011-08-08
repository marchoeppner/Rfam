# DB Connection class

Rfam_DB_ADAPTER = 'mysql'
Rfam_DATABASE = "rfam_"
Rfam_DB_HOST = 'localhost'
Rfam_DB_USERNAME = ''
Rfam_DB_PASSWORD = ''


  
  module RfamDB
    
    class DBConnection < ActiveRecord::Base
      self.abstract_class = true
    
      def self.connect(version="_91")

        establish_connection(
                              :adapter => Rfam_DB_ADAPTER,
                              :host => Rfam_DB_HOST,
                              :database => "#{Rfam_DATABASE}#{version}",
                              :username => Rfam_DB_USERNAME,
                              :password => Rfam_DB_PASSWORD
                              #:port => port
                            )
      end
    
    end
    
  end
  
