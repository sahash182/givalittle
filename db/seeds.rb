# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "Sean", last_name: "Hill", email: "sean@test.com", password: "test1234")
User.create(first_name: "Aubrey", last_name: "Worley", email: "aubrey@test.com", password: "test1234")
User.create(first_name: "Jason", last_name: "Tasharski", email: "jason@test.com", password: "test1234")
User.create(first_name: "Sahash", last_name: "Sainju", email: "sahash@test.com", password: "test1234")
User.create(first_name: "Antonio", last_name: "de Leon", email: "antonio@test.com", password: "test1234")

Charity.create(charity_name: "ArtSpan", mission: "ArtSpan produces SF Open Studios, the Art for City Youth program, artist networking events, and artist professional development workshops throughout the year.")
Charity.create(charity_name: "Project Night Night", mission: "Project Night Night donates over 25,000 Night Night Packages each year, free of charge, to homeless children who need our childhood essentials to feel secure, cozy, ready to learn, and significant.")
Charity.create(charity_name: "SF Smiles", mission: "SF Smiles collects donations of clean and usable furniture, household items, clothing, baby accessories and basic necessities for individuals and families in need.")
Charity.create(charity_name: "Muttville Senior Dog Rescue", mission: "Muttville’s mission is to change the way the world thinks about and treats older dogs and to create better lives for them through rescue, foster, adoption and hospice.")
Charity.create(charity_name: "East Bay SPCA", mission: "The East Bay SPCA is committed to the welfare of cats and dogs in the communities we serve. We strive to eliminate animal cruelty, neglect and overpopulation by providing programs and education that support people and companion animals.")
Charity.create(charity_name: "Make A Wish", mission: "Make-A-Wish® Greater Bay Area was founded in 1984. In its first year, a total of 27 wishes were granted. Now one of the largest chapters nationwide, we have granted over 6,000 wishes to date and grant over 340 wishes per year.")
Charity.create(charity_name: "Girls on the Run", mission: "We inspire girls to be joyful, healthy and confident using a fun, experience-based curriculum which creatively integrates running.")
Charity.create(charity_name: "Alameda Family Service", mission: "Alameda Family Services is a human services organization, active in Alameda and the East Bay, whose programs improve the emotional, psychological and physical health of children, youth and families.")
Charity.create(charity_name: "Rocket Dogs", mission: "Founded in 2001, Rocket Dog Rescue’s ultimate goal is to create a world where all companion animals have loving and permanent homes and where no good natured dogs, no matter what their age, are killed in shelters because they are considered to be surplus or un-adoptable.")
Charity.create(charity_name: "Giants Community Fund", mission: "The Giants Community Fund collaborates with the San Francisco Giants by using baseball as a forum to encourage underserved youth and their families to live healthy, productive lives. The Fund supports Junior Giants leagues throughout Northern California, Nevada and Oregon and provides assistance to targeted community initiatives in the areas of Education, Health and Violence Prevention.")
Charity.create(charity_name: "SF-Marin Food Bank", mission: "Our mission is to end hunger in San Francisco and Marin. It's a huge job that's only gotten harder as our community struggles with a prolonged period of economic distress and record numbers of people are pushed to the point of hunger.")