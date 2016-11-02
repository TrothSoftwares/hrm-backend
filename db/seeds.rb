user1 = User.create( password: 'password' ,role: 'Admin' , firstname: 'Admin', middlename: '', lastname: '', email: 'admin@test.com', contact:'+91-9947183255' , designation: 'Developer' , dateofjoin: DateTime.new(2009,9,1,17) ,department: 'WebApps' , location:'Kerala', gender: 'Male', maritialstatus: 'Singe' ,  dob: DateTime.new(2009,9,1,17) , temporaryaddress: 'Aluva' , permenantaddress: 'PTA Kerala' , url: '' ,status: 'Active' , )
user2 = User.create( password: 'password' ,role: 'Employee' , firstname: 'Mohammed', middlename: '', lastname: 'Talha', email: 'talhaqqq@gmail.com', contact:'+91-9947183255' , designation: 'Developer' , dateofjoin: DateTime.new(2009,9,1,17) ,department: 'WebApps' , location:'Kerala', gender: 'Male', maritialstatus: 'Singe' ,  dob: DateTime.new(2009,9,1) , temporaryaddress: 'Aluva' , permenantaddress: 'PTA Kerala' , url: '' ,status: 'Active' , basic:10000 , adhoc:100 , gross:10100, pass:'password', passportno:12345678 , endcontract:DateTime.new(2019,9,1) ,endqid:DateTime.new(2019,9,1) )


Attendance.create(user: user2 , totaldays:30 , leavedays:10 ,presentdays:20)

Leaveroll.create( user: user2 , status: 'pending', fromdate:DateTime.new(2016,10,10) , todate:DateTime.new(2016,10,17)  ,days:7, comments: 'sick')
Leaveroll.create( user: user2 , status: 'pending', fromdate:DateTime.new(2016,10,17) , todate:DateTime.new(2016,10,18)  ,days:1, comments: 'Marriage')
Leaveroll.create( user: user2 ,status: 'pending', fromdate:DateTime.new(2016,10,20) , todate:DateTime.new(2016,10,27)  ,days:7, comments: 'Sick')


job1 = Job.create(header: 'System Admin', desc: ' Good admin', skills: 'Good communication, Linux, Git', salary:15000 ,nofvaccancy:10 ,location: 'TVM')
job2 = Job.create(header: 'Senior PHP Dev', desc: ' Atleast 2 Yrs Exp', skills: 'Good communication, Linux, Git ,PHP,HTML,CSS', salary:20000 ,nofvaccancy:10 ,location: 'EKM')

bid1 = Bid.create(user: user1 , job:job1)
bid2 = Bid.create(user: user2, job:job2)

# Employee.create(firstname: 'Hassan', middlename: '', lastname: 'Qamar', email: 'qamar23hassan@gmail.com', contact:'+91-9947183255' , designation: 'Developer' , dateofjoin: DateTime.new(2009,9,1,17) ,department: 'WebApps' , location:'Kerala', gender: 'Male', maritialstatus: 'Singe' ,  dob: DateTime.new(2009,9,1,17) , temporaryaddress: 'Aluva' , permenantaddress: 'PTA Kerala' , url: '' ,status: 'Active' ,role: 'Employee')
# Employee.create(firstname: 'Sharan', middlename: '', lastname: 'S', email: 'talhaqqq@gmail.com', contact:'+91-9947183255' , designation: 'Developer' , dateofjoin: DateTime.new(2009,9,1,17) ,department: 'WebApps' , location:'Kerala', gender: 'Male', maritialstatus: 'Singe' ,  dob: DateTime.new(2009,9,1,17) , temporaryaddress: 'Aluva' , permenantaddress: 'PTA Kerala' , url: '' ,status: 'Active' ,role: 'Employee')
# Employee.create(firstname: 'Anvar', middlename: '', lastname: 'Nazar', email: 'anvarnazr@gmail.com', contact:'+91-9947183255' , designation: 'Developer' , dateofjoin: DateTime.new(2009,9,1,17) ,department: 'WebApps' , location:'Kerala', gender: 'Male', maritialstatus: 'Singe' ,  dob: DateTime.new(2009,9,1,17) , temporaryaddress: 'Aluva' , permenantaddress: 'PTA Kerala' , url: '' ,status: 'Active',role: 'Employee')
