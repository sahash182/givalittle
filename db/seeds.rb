# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
['charity', 'user',  'admin'].each do |role|
  Role.find_or_create_by({name: role})
end
#Admin
User.create(first_name: "admin", last_name: "admin", password: "admin", phone: 987654321, role: "admin", username: "admin")
#Test Users
User.create({first_name: "Jason", last_name: "Tasharski", phone: 123456789, password: "test123", role: "user", username: "jtasharski"},
            {first_name: "Sahash", last_name: "Sainju", phone: 123456788, password: "test123", role: "user", username: "ssainju"}, 
            {first_name: "Sean", last_name: "Hill", phone: 123456787, password: "test123", role: "user", username: "shill"},
            {first_name: "Aubrey", last_name: "Worley", phone: 123456786, password: "test123", role: "user", username: "aworley"},
            {first_name: "Antonio", last_name: "de Leon", phone: 123456785, password: "test123", role: "user", username: "adeleon"})
#Test Charities
User.create({first_name: "Keen Sf", password: "test123", role: "charity", username: "Keen-Sf", description: "Keen San Francisco provides free recreational opportunities to children and young adults with disabilities."},
            {first_name: "Project Night Night", password: "test123", role: "charity", username: "Project-Night-Night", description: "Project Night Night delivers packages filled with books, blankets and stuffed animals to homeless children. They donate over 25,000 children's books each year."}, 
            {first_name: "DISH", password: "test123", role: "charity", username: "dish", description: "Dish SF helps adults with physical, mental health and substance abuse issues get into long term housing. They provide custom property management serves to the SF Department of Health's Direct Access to Housing Program and reinforce the self-worth of people who have not had access to clean places to live."},
            {first_name: "A Good Idea (SF)", password: "test123", role: "charity", username: "a-good-idea-sf", description: "A Good Idea is a vehicle for positive social change that connects people in need with people who want to help. They build these connections through service, education and technology and form teams of experts to implement proven social change models."},
            {first_name: "Summer Search", password: "test123", role: "charity", username: "summer-search", description: "Summer Search takes resilient low-income high school students and inspires them to become responsible and altruistic leaders by providing year-round mentoring, life-changing summer experiences, college advising and a lasting support network."},
            {first_name: "SF Child Abuse Prevention Center", password: "test123", role: "charity", username: "sf-child-abuse-prevention-center", description: "This organization is dedicated to the prevention of child abuse and neglect, the promotion of healthy families and the mental health of children. They offer crisis and intervention programs designed to reduce parental stress, enhance parenting skills and provide comprehensive services for families in need."},
            {first_name: "Shanti Project",password: "test123", role: "charity", username: "shanti-project", description: "Shanti enhances the quality of life, health and well-being of people living with life-threatening illnesses."})