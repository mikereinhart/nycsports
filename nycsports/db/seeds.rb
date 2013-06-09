User.delete_all
Team.delete_all
Feed.delete_all


u1 = User.create(name: 'Mike', password: 'reinhart')
u2 = User.create(name: 'Bernard', password: 'doherty')

t1 = Team.create(name: 'Giants', icon_url: '', official_link: 'http://www.giants.com/', twitter_link: 'https://twitter.com/Giants', facebook_link: 'https://www.facebook.com/newyorkgiants')
t1 = Team.create(name: 'Jets', icon_url: '', official_link: 'http://www.newyorkjets.com/', twitter_link: 'https://twitter.com/nyjets', facebook_link: 'https://www.facebook.com/Jets')


f1 = Feed.create(name: 'Pro Football Talk', feed_url: 'http://profootballtalk.nbcsports.com/')
f2 = Feed.create(name: 'Big Blue Interactive', feed_url: 'http://www.bigblueinteractive.com/')