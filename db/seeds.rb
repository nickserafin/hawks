# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
saad = Article.create! name: "Brandon Saad to miss Flyers game", content: <<-ARTICLE
Chicago Blackhawks forward Brandon Saad did not travel with the team Monday for its game against the Philadelphia Flyers on Tuesday, according to a team spokesperson.
Saad suffered an upper-body injury against the Detroit Red Wings in the second period on Sunday and missed the remainder of the game. Blackhawks coach Joel Quenneville said Sunday he did not believe Saad's injury was serious. Saad was expected to be re-evaluated on Monday.
Saad has not missed a game this season. He is tied for first on the Blackhawks with a plus-29 rating and is sixth on the team with 44 points. He has 19 goals and 25 assists in 68 games this season.
ARTICLE

flyers = Article.create! name: "Flyers take down the Hawks 3-2", content: <<-ARTICLE
It was anothe tough loss from an opponent that the Hawks should of easilt taken down considering their play as of late. This is only the second time the
two teams have met since the Blackhawks won the Stanley Cup there in 2010. It would of been great to come back with a victory but the season is still long
and we will be hopefully playing out best hockey right before the playoffs and use that as momentum.
ARTICLE

versteeg = Article.create! name: "Versteeg is coming back into his old form", content: <<-ARTICLE
Kris Versteeg realizes now he came back too soon after tearing the ACL in his right knee last season. 
Versteeg regrets that to a degree. 
Kris Versteeg is happy to be back with a Cup contender like the Blackhawks.
While returning early hasn't allowed him to be the player he's been in the past, it did give him the opportunity to be traded from the struggling Florida Panthers to the Chicago Blackhawks and provide him another chance to win a Stanley Cup. 
"Yeah, I think about it," Versteeg said recently. "If I didn't do it, I wouldn't be here. It's a Catch-22, I guess. I'm really excited that I got to get back here. If I ever talked to anyone who [had the injury,] I would definitely tell them to take their time and make sure they're ready." 
Versteeg suffered the injury to his right knee when he collided with a player during a game on March 12, 2013. He underwent season-ending surgery later that week. A little over six months later, he was cleared to play again in late September. 
There were a couple reasons behind his quick return. 
"It was just at the time kind of getting almost thrown back into the fire feeling," Versteeg said. "But you know what? It was partly because I wanted to get back, too. I hadn't played a lot of hockey in a while." 
Much like the Panthers, Versteeg got off to a slow start. He had two goals, five assists and a minus-nine rating in his first 18 games. The Panthers went 4-11-3 with Versteeg in the lineup. 
The Blackhawks hadn't found anyone who worked in the third-line winger role Viktor Stalberg left behind from the season before. The Blackhawks were familiar with Versteeg as he had played a key role on their 2010 Stanley Cup team, and general manager Stan Bowman acquired him from the Panthers for two prospects on Nov. 14. 
Versteeg was OK with his play for the Blackhawks leading up to the Olympic break in February, but he knew his right knee still wasn't where he wanted it to be. He took advantage of the two-week break and strengthened his knee by working out with trainer Trevor Hardy. 
"It was a good two weeks," Versteeg said. "During the season, you don't really get a couple weeks to do training. I feel positive about it." 
Versteeg has felt a difference in his knee. 
"Since the break, it's been going good," Versteeg said. "I feel strong. Every time I'm out there hopefully trying to create something. I think there's been a lot of looks since I've been back for myself. Creating offensively with passing has been there lately. Hopefully just it starts going in." 
Since the break, he has one goal and two assists in eight games. He was bumped up to the team's top line two games ago and has seen his ice time increase to around 15 minutes a game. 
Blackhawks coach Joel Quenneville believes Versteeg has played well despite not being 100 percent yet. 
"I just think that injury, that's usually the time line, time frame. It probably takes a year to get back where you really want to be," Quenneville said recently. "In the meantime, I think he's still doing good things and he can help us." 
Versteeg understands he could still be in Florida and getting ready for a long offseason. 
"I definitely have looked at that," Versteeg said. "It doesn't change how I feel about both places. I loved both places. Obviously, they're having a tough season there. To be able to get traded to a contending team is a blessing. I'm thankful for that. Hopefully make do with the opportunity of getting a chance to win another Cup."
ARTICLE
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin