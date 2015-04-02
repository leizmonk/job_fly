note_1 = Note.create(text_field: 'Skittles')
note_2 = Note.create(text_field: 'Game of Death')
note_3 = Note.create(text_field: 'Horatio Skinner Murder Bunny')

job_listing_1 = JobListing.create(
  date_posted: Time.now, 
  date_closing: '2013-09-12 22:49:27',
  position_name: 'Account Manager', 
  company_name: 'WorkFusion', 
  location: 'New York, NY', 
  salary: '60_000', 
  description: 'A truly game-changing enterprise software company comes along once a decade. The last one was Salesforce.com. WorkFusion is the next. Born of research at MIT’s Computer Science and Artificial Intelligence Lab (CSAIL), WorkFusion’s software elevates human intelligence by automating the work that’s beneath it. One of New York City’s fastest growing software companies, WorkFusion is at the intersection of two megatrends in global business: robotic automation and workforce elasticity. WorkFusion’s enterprise platform brings these two trends together by pairing machine learning with human knowledge workers to automate repetitive data work. By identifying, learning, and replicating the pattern of human tasks, WorkFusion radically reduces costs and creates capacity for businesses and improves productivity and creativity for human workers. Fueled by a growing number of large customers in financial services, eCommerce, and retailing and funded by top-tier investors from Silicon Valley and New York, WorkFusion is expanding quickly and growing its world-class team. More information can be found at www.workfusion.com. WorkFusion is seeking an Account Manager to work closely with our fortune 500 clients to be the face of the company to our clients and drive revenue growth within these accounts.', 
  responsibilities: 'Overseeing all commercial issues, including contracts, and adherence to service level agreements; Ensuring all training and support resources are available to clients; Handling any new needs, such as custom integration, and custom development requests; Introducing WorkFusion to new users and ensuring that they receive the necessary orientation, training, and support; Ensuring client satisfaction with WorkFusion; Collaborate with partners on the enterprise sales and service delivery teams to develop and execute strategic growth plans; Navigate among the key players at large, global and complex organizations to understand their needs and how our capabilities align; Build strong relationships with the procurement, legal, and business/operations teams at our client’s organization to get ahead of new opportunities and make negotiating and closing new deals more efficient',
  listing_url: 'http://www.indeed.com/cmp/Workfusion/jobs/Account-Manager-3038b12eb63200c8?sjdu=QwrRXKrqZ3CNX5W-O9jEvawE-dgWLvZTqeLQb4saX4hOv3bjV4nCQbd9-bwGOwYvBybSL6xPeg9JQP3D6yJaIg',
  qualifications: 'BS/MS degree in information systems, business, or a related discipline with emphasis on business and computer technology; Minimum of 5 years of experience in a relationship management or technical account management role; Effective technical writing skills, and exceptional problem solving skills; Strong analytical, and critical thinking, and interpersonal skills; Detail oriented, deadline-driven',
  user_id: '1',
  note_id: note_1,
  )

job_listing_2 = JobListing.create(
  date_posted: Time.now, 
  date_closing: '2013-07-22 22:49:27',
  position_name: 'Sr. Account Executive', 
  company_name: 'WorkFusion', 
  location: 'New York, NY', 
  salary: '110_000', 
  description: 'A truly game-changing enterprise software company comes along once a decade. The last one was Salesforce.com. WorkFusion is the next. Born of research at MIT’s Computer Science and Artificial Intelligence Lab (CSAIL), WorkFusion’s software elevates human intelligence by automating the work that’s beneath it. One of New York City’s fastest growing software companies, WorkFusion is at the intersection of two megatrends in global business: robotic automation and workforce elasticity. WorkFusion’s enterprise platform brings these two trends together by pairing machine learning with human knowledge workers to automate repetitive data work. By identifying, learning, and replicating the pattern of human tasks, WorkFusion radically reduces costs and creates capacity for businesses and improves productivity and creativity for human workers. Fueled by a growing number of large customers in financial services, eCommerce, and retailing and funded by top-tier investors from Silicon Valley and New York, WorkFusion is expanding quickly and growing its world-class team. More information can be found at www.workfusion.com. WorkFusion is seeking an Account Manager to work closely with our fortune 500 clients to be the face of the company to our clients and drive revenue growth within these accounts.', 
  responsibilities: 'Overseeing all commercial issues, including contracts, and adherence to service level agreements; Ensuring all training and support resources are available to clients; Handling any new needs, such as custom integration, and custom development requests; Introducing WorkFusion to new users and ensuring that they receive the necessary orientation, training, and support; Ensuring client satisfaction with WorkFusion; Collaborate with partners on the enterprise sales and service delivery teams to develop and execute strategic growth plans; Navigate among the key players at large, global and complex organizations to understand their needs and how our capabilities align; Build strong relationships with the procurement, legal, and business/operations teams at our client’s organization to get ahead of new opportunities and make negotiating and closing new deals more efficient',
  listing_url: 'http://www.indeed.com/cmp/Workfusion/jobs/Account-Manager-3038b12eb63200c8?sjdu=QwrRXKrqZ3CNX5W-O9jEvawE-dgWLvZTqeLQb4saX4hOv3bjV4nCQbd9-bwGOwYvBybSL6xPeg9JQP3D6yJaIg',
  qualifications: 'BS/MS degree in information systems, business, or a related discipline with emphasis on business and computer technology; Minimum of 5 years of experience in a relationship management or technical account management role; Effective technical writing skills, and exceptional problem solving skills; Strong analytical, and critical thinking, and interpersonal skills; Detail oriented, deadline-driven',
  user_id: '1',
  note_id: note_3,
  )

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)