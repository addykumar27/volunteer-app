# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Opportunity.delete_all
User.delete_all
Organization.delete_all

organization_1 = Organization.create({name:"World", category: "Human Rights & Adocacy", location:"414-13rd Street 2nd floor
Oakland, CA94612", mission_statement: "WORLD is a diverse community of women living with HIV/AIDS and their supporters working together to: *Provide support and information to women with HIV/AIDS and their friends, family and loved ones; *Educate and inspire women with HIV/AIDS to advocate for themselves, one another and their communties; *Promote public awareness of women's HIV/AIDS issues and a compassionate response for all people with HIV/AIDS.", description:"We are an organization internationally recognized for our work with women. We publish a monthly newsletter mailed all over the world with 12,000 readers in over 85 countries. We do support groups, outreach peer advocacy, educational classes and forums, and retreats twice a year. We also work with youth, have a speakers bureau and participate in special events such as the AIDS walk.", website:"http://www.womenhiv.org"})

organization_2 = Organization.create({name:"Human Rights Watch", category: "Human Rights & Adocacy", location:"100 Bush Street, Suite 1812
San Francisco, CA94104", mission_statement:"Human Rights Watch investigates and promotes human rights worldwide.", description:"Founded in 1978, Human Rights Watch is known for its impartial and reliable human rights reporting, its innovative and high-profile advocacy campaigns, and its success in affecting the human rights-related policies of the U.S. and other influential governments", website:"https://www.hrw.org/about/get-local/san-francisco"})

organization_3 = Organization.create({name:"Coaching Corps", category: "Children & Youth", location:"310 Eighth Street
Suite 300 Oakland, CA94607", mission_statement: "Coaching Corps improves the health, educational and social outcomes for kids living in struggling communities through the power of service and sports.", description:"Coaching Corps was founded in 2002 with support from the Evelyn and Walter Haas, Jr. Fund, the Robert Wood Johnson Foundation and the San Francisco Foundation. Since its inception, Coaching Corps seeks to use sports and the power of coaches as vehicles for transformative change for youth in underserved communities.", website:"http://www.coachingcorps.org" })

organization_4 = Organization.create({name:"Simply the Basics", category: "Homeless & Housing", location:"520 PARKER AVE
Unit 101
SAN FRANCISCO, CA94118", mission_statement:"The Mission of Simply the Basics is to provide for individuals, organizations, and communities their most basic needs with dignity so that they can focus on bigger goals. We simply remove barriers, allowing people to have the opportunity to achieve.", description:"Simply the Basics is inspired by Abraham Maslow's Hierarchy of Needs, the philosophy that people are unable to focus on any needs higher than their current level on the following pyramid. If they are unable to meet needs at the very basic level (food, shelter, clothing, education, and hygiene), they will be incapable of moving up in the pyramid to reach greater goals (job security, sobriety, mental and physical health, and self actualization).
By alleviating the struggle to meet a most basic need, a person can achieve independence in other areas. By removing the barrier of finding the next meal or safe place to sleep, securing hygiene products, and meeting any other basic human needs...People are given the Opportunity to Achieve.", website:"http://www.SimplytheBasics.org"})

organization_5 = Organization.create({name:"St. Francis Living Room", category: "Homeless & Housing", location:"350 Golden Gate Ave
San Francisco, CA94102", mission_statement:"The mission of the Saint Francis Living Room is to improve the quality of life for frail, low income, or homeless seniors in the Tenderloin on a daily basis by providing a safe space for social interaction, healthy breakfast, and connection to community services such as housing, health, & wellness.", description:"The Living Room is open Monday-Friday, 8:30am-12pm, to anyone over the age of 60. Program offerings include a healthy breakfast, a clean safe haven for social interaction, and referral service for community offerings such as clothing, health, & housing. Program activities include exercise opportunities, Healthy Living workshops, Movie Time, & Bingo.", website:"http://www.sflivingroom.org"})

organization_6 = Organization.create({ name:"Boys & Girls Club of San Francisco", category: "Children & Youth", location:"380 Fulton St
San Francisco, CA94102", mission_statement:"To inspire and enable all young people, especially those from disadvantaged circumstances, to realize their full potential as productive, responsible and caring citizens.", description:"Part of the community since 1891, Boys & Girls Clubs of San Francisco (BGCSF) currently serves more than 1,400 youth (ages six-18) per day.
 We have more than 5,800 active members and serve more than 17,000 youth per year at 11 program sites-including eight Clubhouses located in the neighborhoods with the fewest resources, one extension site, two school-based sites and Camp Mendocino - a 2,000-acre residential summer camp that provides a creative and fun outdoor experience for youth.
 We are open when kids need us most - after school, on most school holidays and during the summer. We offer safe places where young people can learn, grow, and succeed.", website:"http://www.kidsclub.org"}),

organization_7 = Organization.create({name:"Walk San Francisco", category: "Environment", location:"333 Hayes Street, Suite 202
San Francisco, CA94102", mission_statement:"Walk San Francisco makes walking in San Francisco safe for every, so our community is healthier and more livable.", description:"Walk San Francisco (Walk SF) is San Francisco’s pedestrian advocacy group, making San Francisco a more livable, walkable city by reclaiming our streets as safe, shared public space for everyone to enjoy.
Walk SF fights to improve San Francisco’s walking environment through policy advocacy and programs that educate residents, city agencies, and elected officials regarding the need for more people-friendly streets.", website:"http://www.walksf.org"}),

organization_8 = Organization.create({name:"Citizens' Climate Lobby", category: "Environment", location:"1330 Orange Ave #300
Coronado, CA92118", mission_statement:"Take Action to Solve the Climate Crisis: Dr. James Hansen, climate scientist: Most impressive is the work of the Citizens' Climate Lobby, a relatively new, fastgrowing, nonpartisan, nonprofit group with [250+] chapters across the United States and Canada. If you want to join the fight to save the planet, to save creation for your grandchildren, there is no more effective step you could take than becoming an active member of this group.Citizens' Climate Lobby is committed to two purposes: (1) to create the political will for a stable and sustainable climate and (2) to empower individuals to have a breakthrough in exercising their personal and political power.",description:"Citizens’ Climate Lobby is a non-profit, non-partisan, grassroots advocacy organization focused on national policies to address climate change. In order to generate the political will necessary for passage of our Carbon Fee and Dividend proposal we train and support volunteers to engage elected officials, the media and the public.",website:"http://www.citizensclimatelobby.org"})



opportunity_1 = Opportunity.new({name:"Receptionist Volunteers NEEDED at Women HIV Non-Profit in Oakland!", location:"389 30th street Oakland, CA94609", 
	organization:"World"})

opportunity_2 = Opportunity.new({name:"Associate Board Member, Fundraising Committee", location:"540 Howard St,San Francisco, CA94105", 
	organization:"Human Rights Watch"})

opportunity_3 = Opportunity.new({name:"Coach Kids in San Francisco", location:"Throughout SF, San Francisco, CA 94102", 
	organization:"Coaching corps"})

opportunity_4 = Opportunity.new({name:"Group Volunteering - Hygiene Sorting & Packing", location:"312 Mason
San Francisco, CA94102",organization:"Simply the Basics"})

opportunity_5 = Opportunity.new({name:"Help Feed Low-income & Homeless Seniors", location:"350 Golden Gate Ave
San Francisco, CA94102", organization:"St. Francis Living Room"})

opportunity_6 = Opportunity.new({name:"Admin/Office work for Boys & Girls Clubs of San Francisco", location:"380 Fulton St
San Francisco, CA94102", organization:"Boys & Girls Club of San Francisco"})

opportunity_7 = Opportunity.new({name:"For Anyone Who Loves Walking in San Francisco", location:"333 Hayes Street, Suite 202
San Francisco", organization:"Walk San Francisco"})

opportunity_8 = Opportunity.new({name:"Sustainable Climate Environment Advocate San Francisco", location:"Groups across the country and in San Francisco
San Francisco, CA94102", organization:"Citizens' Climate Lobby"})


user_1 = User.create ({first_name: "Lily", last_name: "Corner", location: "San Francisco",opportunity: "Receptionist Volunteers NEEDED at Women HIV Non-Profit in Oakland!"})
user_2 = User.create ({first_name: "Cathy", last_name: "Palmer", location: "San Francisco", opportunity: "Associate Board Member, Fundraising Committee" })
user_3 = User.create ({first_name: "Laila", last_name: "Jones", location: "San Francisco", opportunity: "Coach Kids in San Francisco"})
user_4 = User.create ({first_name: "Cindy", last_name: "Path", location: "San Francisco", opportunity: "Group Volunteering - Hygiene Sorting & Packing"})
user_5 = User.create ({first_name: "Rita", last_name: "Levis", location: "San Francisco", opportunity: "Help Feed Low-income & Homeless Seniors"}) 
user_6 = User.create ({first_name: "Julie", last_name: "Keith", location: "San Francisco", opportunity: "Admin/Office work for Boys & Girls Clubs of San Francisco"})
user_7 = User.create ({first_name: "William", last_name: "Spicey", location: "San Francisco", opportunity: "For Anyone Who Loves Walking in San Francisco"})
user_8 = User.create ({first_name: "Kevin", last_name: "James", location: "San Francisco", opportunity: "Sustainable Climate Environment Advocate San Francisco"})

 Useropp.create 
 user_1.opportunities.push(opportunity_1)
 user_3.opportunities.push(opportunity_2)
 user_2.opportunities.push(opportunity_7)
 # opportunity_7.users.push(user_3)
 # opportunity_6.users.push(user_8)

 
p "Seed data populated!"
