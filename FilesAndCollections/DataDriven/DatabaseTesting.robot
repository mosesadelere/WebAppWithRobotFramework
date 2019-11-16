*** Settings ***
Library    DatabaseLibrary    
Library    OperatingSystem    

Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database


*** Variables ***
${DBName}    people
${DBUser}    root
${DBPass}    root
${DBHost}    localhost
${DBPort}    3306

*** Test Cases ***
#Create person table
#    ${output}=    Execute Sql String    create table persons(id integer, firstname varchar(20), lastname varchar(20));
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None
   
#Insert Data to table person
#     ${output}=    Execute Sql Script    ./TestData/person_insert_data.sql  
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None

check if data exists in table
    Check If Exists In Database    select id from persons where firstname="Qudus";
    
check if data not present in table
    Check If Not Exists In Database    select id from persons where firstname="Jones";         
    
check if table exists in database
    Table Must Exist    persons    
    
verify row count is zero
    Row Count Is 0    select * from persons where firstname = "moses";
    
verify number of rows
    ${count}=    Row Count    select * from persons;
    log to console    ${count}   
    
verify row count is equal to value
    Row Count Is Equal To X    select * from persons where firstname="Shakirah";    2
 
update records in table
     ${output}=    Execute Sql String    update persons set firstname="Oluwadara" where id=101;
     Log To Console    ${output}
     Should Be Equal As Strings    ${output}    None
     
Retrieve records from table
    ${queryresult}=    Query    select * from persons;
    Log To Console    ${queryresult}              