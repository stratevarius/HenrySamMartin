# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }: '',{ name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel': '',city: cities.first)

Executive.create([{
	username: 'sam', 
	password_digest: 'password', 
	strat_exec_constituent_type: 'owner',
	prefix: 'Mr.', 
	firstname: 'Henry',
	lastname: 'Szeto',
	suffix: '',
	email: 'ucla@hotmail.com',
	mobile_tel: '310-999-9999',
	mobile_carrier: 'att',
	office_tel: '888-888-8888',
	social_twitter: 'hszeto',
	social_linkedin: 'http://www.linkedin.com/pub/hszeto',
	social_blog: 'blog address',
	is_verified_by_staff: 'not yet verified by staff',
	is_verified_by_thirdparty: 'no third party verification',
	exec_comments_on_self: 'henry loves his testing',
	is_user: true
	}]);