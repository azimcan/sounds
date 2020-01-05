tags = %w( Klasik Elektronik Akustik Funk Hip-Hop Caz Pop Vokal-Ses Yeraltı Elektro House Sinematik Rock Rap Urban Westcoast Soul Melankolia Reggae Ambiyans Trap)

puts "Taglar olusturuluyor..."
tags.each do |tag|
  puts"#{tag} ..OK"
  Tag.create(tag_name: tag)
end
puts "Tamamlandi."

users = [
	{
		name: 'Azim Can',
		surname: 'KURUCA',
		username: 'azimcan',
		email: 'azimcankuruca@gmail.com',
		password: '123456789'
	},
	{
		name: 'Yasin',
		surname: 'HIZIR',
		username: 'yasin',
		email: 'yasinhizir@gmail.com',
		password: '123456789'
	},
	{
		name: 'Özhan ',
		surname: 'DALMIŞ',
		username: 'ozhan',
		email: 'ozhandalmis@gmail.com',
		password: '123456789'
	}
]
puts "Kullanicilar olusturuluyor..."
users.each do |user|
	puts"#{user} ..OK"
	User.create(user)

end
puts "Tamamlandi."

sounds = [
	{
		name: 'Tusa',
		tag: 'Akustik',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/709636759&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 50,
		user_id: 1
	},
	{
		name: 'Dance Monkey',
		tag: 'Elektro',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/632659404&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 75,
		user_id: 2
	},
	{
		name: 'Roxanne',
		tag: 'Klasik',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/693902449&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 60,
		user_id: 3
	},
	{
		name: 'One',
		tag: 'Akustik',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/8107657&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 40,
		user_id: 1
	},
	{
		name: 'Lalala',
		tag: 'House',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/633309999&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 30,
		user_id: 2
	},
	{
		name: 'Adios',
		tag: 'Akustik',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/667893953&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 90,
		user_id: 1
	},
]

puts "Sesler olusturuluyor..."
sounds.each do |sound|
	puts"#{sound} ..OK"
	Sound.create(sound)
end
puts "Tamamlandi."

comments = ["Wow... Loved this place.", "Crust is not good.", "Not tasty and the texture was just nasty.", "Stopped by during the late May bank holiday off Rick Steve recommendation and loved it.", "The selection on the menu was great and so were the prices.", "Now I am getting angry and I want my damn pho.", "Honeslty it didn't taste THAT fresh.)", "The potatoes were like rubber and you could tell they had been made up ahead of time being kept under a warmer.", "The fries were great too.", "A great touch.", "Service was very prompt.", "Would not go back.", "The cashier had no care what so ever on what I had to say it still ended up being wayyy overpriced.", "I tried the Cape Cod ravoli, chicken, with cranberry...mmmm!", "I was disgusted because I was pretty sure that was human hair.", "I was shocked because no signs indicate cash only.", "Highly recommended.", "Waitress was a little slow in service.", "This place is not worth your time, let alone Vegas.", "did not like at all.", "The Burrittos Blah!", "The food, amazing.", "Service is also cute.", "I could care less... The interior is just beautiful.", "So they performed.", "That's right....the red velvet cake.....ohhh this stuff is so good.", "This hole in the wall has great Mexican street tacos, and friendly staff.", "Took an hour to get our food only 4 tables in restaurant my food was Luke warm, Our sever was running around like he was totally overwhelmed.", "The worst was the salmon sashimi.", "Also there are combos like a burger, fries, and beer for 23 which is a decent deal.", "This was like the final blow!", "I found this place by accident and I could not be happier.", "seems like a good quick place to grab a bite of some familiar pub food, but do yourself a favor and look elsewhere.", "Overall, I like this place a lot.", "The only redeeming quality of the restaurant was that it was very inexpensive.", "Ample portions and good prices.", "Poor service, the waiter made me feel like I was stupid every time he came to the table.", "My first visit to Hiro was a delight!", "Service sucks.", "The shrimp tender and moist.", "There is not a deal good enough that would drag me into that establishment again.", "Hard to judge whether these sides were good because we were grossed out by the melted styrofoam and didn't want to eat it for fear of getting sick.", "On a positive note, our server was very attentive and provided great service.", "Frozen pucks of disgust, with some of the worst people behind the register.", "The only thing I did like was the prime rib and dessert section.", "It's too bad the food is so damn generic.", "The burger is good beef, cooked just right.", "If you want a sandwich just go to any Firehouse!!!!!", "My side Greek salad with the Greek dressing was so tasty, and the pita and hummus was very refreshing.", "We ordered the duck rare and it was pink and tender on the inside with a nice char on the outside.", "He came running after us when he realized my husband had left his sunglasses on the table.", "Their chow mein is so good!", "They have horrible attitudes towards customers, and talk down to each one when customers don't enjoy their food.", "The portion was huge!", "Loved it...friendly servers, great food, wonderful and imaginative menu.", "The Heart Attack Grill in downtown Vegas is an absolutely flat-lined excuse for a restaurant.", "Not much seafood and like 5 strings of pasta at the bottom.", "The salad had just the right amount of sauce to not over power the scallop, which was perfectly cooked.", "The ripped banana was not only ripped, but petrified and tasteless.", "At least think to refill my water before I struggle to wave you over for 10 minutes.", "This place receives stars for their APPETIZERS!!!", "The cocktails are all handmade and delicious.", "We'd definitely go back here again.", "We are so glad we found this place.", "Great food and service, huge portions and they give a military discount.", "Always a great time at Dos Gringos!", "Update.....went back for a second time and it was still just as amazing", "We got the food and apparently they have never heard of salt and the batter on the fish was chewy.", "A great way to finish a great.", "The deal included 5 tastings and 2 drinks, and Jeff went above and beyond what we expected.", "#NAME?", "The service was meh.", "It took over 30 min to get their milkshake, which was nothing more than chocolate milk.", "I guess I should have known that this place would suck, because it is inside of the Excalibur, but I didn't use my common sense.", "The scallop dish is quite appalling for value as well.", "2 times - Very Bad Customer Service !", "The sweet potato fries were very good and seasoned well.", "Today is the second time I've been to their lunch buffet and it was pretty good.", "There is so much good food in Vegas that I feel cheated for wasting an eating opportunity by going to Rice and Company.", "Coming here is like experiencing an underwhelming relationship where both parties can't wait for the other person to ask to break up.", "walked in and the place smelled like an old grease trap and only 2 others there eating.", "The turkey and roast beef were bland.", "This place has it!", "The pan cakes everyone are raving about taste like a sugary disaster tailored to the palate of a six year old.", "I love the Pho and the spring rolls oh so yummy you have to try.", "The poor batter to meat ratio made the chicken tenders very unsatisfying.", "All I have to say is the food was amazing!!!", "Omelets are to die for!", "Everything was fresh and delicious!", "In summary, this was a largely disappointing dining experience.", "It's like a really sexy party in your mouth, where you're outrageously flirting with the hottest person at the party.", "Never been to Hard Rock Casino before, WILL NEVER EVER STEP FORWARD IN IT AGAIN!", "Best breakfast buffet!!!", "say bye bye to your tip lady!", "We'll never go again.", "Will be back again!", "Food arrived quickly!", "It was not good.", "On the up side, their cafe serves really good food.", "Our server was fantastic and when he found out the wife loves roasted garlic and bone marrow, he added extra to our meal and another marrow to go!", "The only good thing was our waiter, he was very helpful and kept the bloddy mary's coming.", "Best Buffet in town, for the price you cannot beat it.", "I LOVED their mussels cooked in this wine reduction, the duck was tender, and their potato dishes were delicious.", "This is one of the better buffets that I have been to.", "So we went to Tigerlilly and had a fantastic afternoon!", "The food was delicious, our bartender was attentive and personable AND we got a great deal!", "The ambience is wonderful and there is music playing.", "Will go back next trip out.", "Sooooo good!!", "REAL sushi lovers, let's be honest - Yama is not that good.", "At least 40min passed in between us ordering and the food arriving, and it wasn't that busy.", "This is a really fantastic Thai restaurant which is definitely worth a visit.", "Nice, spicy and tender.", "Good prices.", "Check it out.", "It was pretty gross!", "I've had better atmosphere.", "Kind of hard to mess up a steak but they did.", "Although I very much liked the look and sound of this place, the actual experience was a bit disappointing.", "I just don't know how this place managed to served the blandest food I have ever eaten when they are preparing Indian cuisine.", "Worst service to boot, but that is the least of their worries.", "Service was fine and the waitress was friendly.", "The guys all had steaks, and our steak loving son who has had steak at the best and worst places said it was the best steak he's ever eaten."]
puts "Yorumlar olusturuluyor..."
comments.each do |comment|
	temp_comment = Sound.find(rand(1..6)).comments.new
	temp_comment.user = User.find(rand(1..3))
	temp_comment.comment = comment
	temp_comment.save
	puts"#{temp_comment} ..OK"
end
puts "Tamamlandi."