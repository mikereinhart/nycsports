User.delete_all
Team.delete_all
Feed.delete_all


u1 = User.create(name: 'Mike', password: 'reinhart', email: 'mike@sample.com')
u2 = User.create(name: 'Bernard', password: 'doherty', email: 'bernard@sample.com')
#u3 = User.create(name: '', password: '')


t1 = Team.create(name: 'Giants', icon_url: '', official_link: 'http://www.giants.com/', twitter_link: 'https://twitter.com/Giants', facebook_link: 'https://www.facebook.com/newyorkgiants')
t2 = Team.create(name: 'Jets', icon_url: '', official_link: 'http://www.newyorkjets.com/', twitter_link: 'https://twitter.com/nyjets', facebook_link: 'https://www.facebook.com/Jets')
t3 = Team.create(name: 'Yankees', icon_url: '', official_link: 'http://newyork.yankees.mlb.com/index.jsp?c_id=nyy', twitter_link: 'https://twitter.com/Yankees', facebook_link: 'https://www.facebook.com/Yankees')
t4 = Team.create(name: 'Mets', icon_url: '', official_link: 'http://newyork.mets.mlb.com/index.jsp?c_id=nym', twitter_link: 'https://twitter.com/Mets', facebook_link: 'https://www.facebook.com/Mets')
t5 = Team.create(name: 'Knicks', icon_url: '', official_link: 'http://www.nba.com/knicks/', twitter_link: 'https://twitter.com/nyknicks', facebook_link: 'https://www.facebook.com/NYKnicks')
t6 = Team.create(name: 'Nets', icon_url: '', official_link: 'http://www.nba.com/nets/', twitter_link: 'https://twitter.com/BrooklynNets', facebook_link: 'https://www.facebook.com/BrooklynNets')
#t7 = Team.create(name: '', icon_url: '', official_link: '', twitter_link: '', facebook_link: '')


f1 = Feed.create(name: 'Pro Football Talk', feed_url: 'http://profootballtalk.nbcsports.com/')
f2 = Feed.create(name: 'Big Blue Interactive', feed_url: 'http://www.bigblueinteractive.com/')
f3 = Feed.create(name: 'Jets ESPN', feed_url: 'http://espn.go.com/nfl/team/_/name/nyj/new-york-jets')
f4 = Feed.create(name: 'Giants ESPN', feed_url: 'http://espn.go.com/nfl/team/_/name/nyg/new-york-giants')
f5 = Feed.create(name: 'Yankees ESPN', feed_url: 'http://espn.go.com/mlb/team/_/name/nyy/new-york-yankees')
f6 = Feed.create(name: 'Mets ESPN', feed_url: 'http://espn.go.com/mlb/team/_/name/nym/new-york-mets')
f7 = Feed.create(name: 'Knicks ESPN', feed_url: 'http://espn.go.com/nba/team/_/name/ny/new-york-knicks')
f8 = Feed.create(name: 'Nets ESPN', feed_url: 'http://espn.go.com/nba/team/_/name/bkn/brooklyn-nets')
f9 = Feed.create(name: 'Jets Bleacher Report', feed_url: 'http://bleacherreport.com/new-york-jets')
#f10 = Feed.create(name: '', feed_url: '')

u1.teams << t1 << t3 << t6
u2.teams << t2 << t4 << t5

t1.feeds << f2 << f4
t2.feeds << f3 << f9
t3.feeds << f5
t4.feeds << f6
t5.feeds << f7 
t6.feeds << f8

