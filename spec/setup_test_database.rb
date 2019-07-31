require 'pg'

p "Setting up test database..."

def setup_test_database
  connection = PG.connect(dbname: 'groundbnb_test')
  connection.exec("TRUNCATE users;")
end