class User
  include MongoMapper::Document
  include ActiveModel::SecurePassword
  
  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    
  key :name, String, :required => true
  key :email, String, :required => true, :unique => true, :format => EMAIL_REGEXP
  key :password_digest, String, :required
  key :last_access_date, DateTime
  
  has_secure_password
end
