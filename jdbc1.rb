# Try getting a db connection using oracle's JDBC driver

require 'java'

include_class('java.lang.Class') {|package,name| "J#{name}" }
include_class 'java.sql.Connection'
include_class 'java.sql.DriverManager'
include_class 'java.sql.ResultSet'
include_class 'java.sql.Statement'

JClass.forName('oracle.jdbc.driver.OracleDriver')
con = DriverManager.getConnection('jdbc:oracle:thin:@host:1521:DBSID', 'scott', 'tiger')
stmt = con.createStatement()
query = 'select id from users'
rs = stmt.executeQuery(query)

while rs.next()
    print rs.getString('id'), "\n"
end


