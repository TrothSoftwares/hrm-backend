employee1 = Employee.create(firstname: 'Mohammed', middlename: '', lastname: 'Talha', email: 'talhaqqq@gmail.com', contact:'+91-9947183255' , designation: 'Developer' , dateofjoin: DateTime.new(2009,9,1,17) ,department: 'WebApps' , location:'Kerala', gender: 'Male', maritialstatus: 'Singe' ,  dob: DateTime.new(2009,9,1,17) , temporaryaddress: 'Aluva' , permenantaddress: 'PTA Kerala' , url: '' ,status: 'Active', role: 'Employee')
user1 = User.create(email: 'admin@test.com', password: 'password' ,role: 'Admin' )

user2 = User.create(email: 'talhaqqq@gmail.com', password: 'password' ,role: 'Employee' ,  employee_id: 1)
Attendance.create(employee: employee1 )

job1 = Job.create(header: 'System Admin', desc: ' Good admin', skills: 'Good communication, Linux, Git', salary:15000 ,nofvaccancy:10 ,location: 'TVM')
job2 = Job.create(header: 'Senior PHP Dev', desc: ' Atleast 2 Yrs Exp', skills: 'Good communication, Linux, Git ,PHP,HTML,CSS', salary:20000 ,nofvaccancy:10 ,location: 'EKM')

bid1 = Bid.create(employee:employee1 , job:job1)
bid2 = Bid.create(employee:employee1 , job:job2)

 # Employee.create(firstname: 'Hassan', middlename: '', lastname: 'Qamar', email: 'qamar23hassan@gmail.com', contact:'+91-9947183255' , designation: 'Developer' , dateofjoin: DateTime.new(2009,9,1,17) ,department: 'WebApps' , location:'Kerala', gender: 'Male', maritialstatus: 'Singe' ,  dob: DateTime.new(2009,9,1,17) , temporaryaddress: 'Aluva' , permenantaddress: 'PTA Kerala' , url: '' ,status: 'Active' ,role: 'Employee')
 # Employee.create(firstname: 'Sharan', middlename: '', lastname: 'S', email: 'talhaqqq@gmail.com', contact:'+91-9947183255' , designation: 'Developer' , dateofjoin: DateTime.new(2009,9,1,17) ,department: 'WebApps' , location:'Kerala', gender: 'Male', maritialstatus: 'Singe' ,  dob: DateTime.new(2009,9,1,17) , temporaryaddress: 'Aluva' , permenantaddress: 'PTA Kerala' , url: '' ,status: 'Active' ,role: 'Employee')
 # Employee.create(firstname: 'Anvar', middlename: '', lastname: 'Nazar', email: 'anvarnazr@gmail.com', contact:'+91-9947183255' , designation: 'Developer' , dateofjoin: DateTime.new(2009,9,1,17) ,department: 'WebApps' , location:'Kerala', gender: 'Male', maritialstatus: 'Singe' ,  dob: DateTime.new(2009,9,1,17) , temporaryaddress: 'Aluva' , permenantaddress: 'PTA Kerala' , url: '' ,status: 'Active',role: 'Employee')
