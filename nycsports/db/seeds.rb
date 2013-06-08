User.delete_all
Team.delete_all
Feed.delete_all


u1 = User.create(name: 'Mike', password: 'reinhart')
u2 = User.create(name: 'Bernard', password: 'doherty')

t1 = Team.create(name: 'Giants', icon_url: '', official_link: 'http://www.giants.com/', twitter_link: 'https://twitter.com/Giants', facebook_link: 'https://www.facebook.com/newyorkgiants')