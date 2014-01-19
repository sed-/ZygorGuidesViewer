local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer:RegisterInclude("goto_sungshin",[[
		goto Valley of the Four Winds 53.58,51.23
		.talk Sungshin Ironpaw##64231
]])

ZygorGuidesViewer:RegisterInclude("Pandarian_Cooking_1-520",[[
	step
		#include "goto_sungshin"
		skillmax Cooking,75
		..accept So You Want to Be a Chef...##31281
	step
		#include "goto_sungshin"
		.learn Sliced Peaches##125117 |q 31281
		.buy 5 Pandaren Peach##74660 |q 31281
	step
		#include cooking_fire
		.create 5 Sliced Peaches##125117,Cooking,5 total |q 31281/1
		.get 5 Sliced Peaches##86057 |q 31281/2
		.skill Cooking,30
		|tip You may need to buy another peach if your cooking skill is not 30 yet.
	step
		#include "goto_sungshin"
		..turnin So You Want to Be a Chef...##31281
	step
		#include "goto_sungshin"
		.learn Perfectly Cooked Instant Noodles##125067
		|only if skill('Cooking')<=59
	step
		#include "goto_sungshin"
		.buy 6 Instant Noodles##74854 |n
		.create 6 Perfectly Cooked Instant Noodles##125067,Cooking,60
	step
		#include "goto_sungshin"
		.learn Toasted Fish Jerky##124225
		skillmax Cooking,150
		|only if skill('Cooking')<=89
	step
		goto Krasarang Wilds 37.4,35.2
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 6 Golden Carp##74866
		|only if skill('Cooking')<=89
	step
		#include cooking_fire
		.create Toasted Fish Jerky##124225,Cooking,90
	step
		#include "goto_sungshin"
		.learn Dried Needle Mushrooms##124227
		|only if skill('Cooking')<=119
	step
		#include "goto_sungshin"
		.buy 6 Needle Mushrooms##85583 |n
		.create Dried Needle Mushrooms##124227,Cooking,120
	step
		#include "goto_sungshin"
		.learn Pounded Rice Cake##124223
		|only if skill('Cooking')<=149
	step
		#include "goto_sungshin"
		.buy 6 Rice##74851 |n
		.create Pounded Rice Cake##124223,Cooking,150
	step
		#include "goto_sungshin"
		skillmax Cooking,225
	step
		#include "goto_sungshin"
		.learn Yak Cheese Curds##124224
		|only if skill('Cooking')<=179
	step
		#include "goto_sungshin"
		.buy 6 Yak Milk##74852 |n
		.create Yak Cheese Curds##124224,Cooking,180
	step
		#include "goto_sungshin"
		.learn Dried Peaches##124226
		|only if skill('Cooking')<=209
	step
		#include "goto_sungshin"
		.buy 6 Pandaren Peach##74660 |n
		.create Dried Peaches##124226,Cooking,210
	step
		#include "goto_sungshin"
		.learn Boiled Silkworm Pupa##124228
		skillmax Cooking,300
		|only if skill('Cooking')<=239
	step
		#include "goto_sungshin"
		.buy 6 Silkworm Pupa##85584 |n
		.create Boiled Silkworm Pupa##124228,Cooking,240
	step
		#include "goto_sungshin"
		.learn Roasted Barley Tea##125078
		|only if skill('Cooking')<=269
	step
		#include "goto_sungshin"
		.buy 6 Barley##74832 |n
		.create Roasted Barley Tea##125078,Cooking,270
	step
		#include "goto_sungshin"
		.learn Golden Carp Consomme##104237
		|only if skill('Cooking')<=299
	step
		goto Krasarang Wilds 37.4,35.2
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 24 Golden Carp##74866 |only if skill('Cooking')<=299
		.collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329
	step
		#include cooking_fire
		.create Golden Carp Consomme##104237,Cooking,300
	step
		#include "goto_sungshin"
		skillmax Cooking,375
	step
		#include "goto_sungshin"
		.learn Fish Cake##104297
		|only if skill('Cooking')<=329
	step
		goto Krasarang Wilds 37.4,35.2
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329
	step
		#include "goto_sungshin"
		.create Fish Cake##104297,Cooking,330
	step
		#include "goto_sungshin"
		.learn Blanched Needle Mushrooms##124233
		|only if skill('Cooking')<=359
	step
		#include "goto_sungshin"
		.buy 12 Needle Mushrooms##85583 |n
		.create 6 Blanched Needle Mushrooms##124233,Cooking,360
	step
		#include "goto_sungshin"
		skillmax Cooking,450
	step
		#include "goto_sungshin"
		.learn Red Bean Bun##124229
		|only if skill('Cooking')<=389
	step
		#include "goto_sungshin"
		.buy 6 Red Beans##85585 |n
		.create Red Bean Bun##124229,Cooking,390
	step
		#include "goto_sungshin"
		.learn Skewered Peanut Chicken##124234
		|only if skill('Cooking')<=419
	step
		#include "goto_sungshin"
		.buy 6 Farm Chicken##74659 |n
		.create Skewered Peanut Chicken##124234,Cooking,420
	step
		#include "goto_sungshin"
		.learn Green Curry Fish##124231
		.buy 6 Rice##74851
		|only if skill('Cooking')<=449
	step
		goto Krasarang Wilds 37.4,35.2
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 12 Golden Carp##74866 
		|only if skill('Cooking')<=449
	step
		#include cooking_fire
		.create Green Curry Fish##124231,Cooking,450
	step
		#include "goto_sungshin"
		skillmax Cooking,525
	step
		#include "goto_sungshin"
		.learn Peach Pie##124232
		|only if skill('Cooking')<=479
	step
		#include "goto_sungshin"
		.buy 12 Pandaren Peach##74660 |n
		.create Peach Pie##124232,Cooking,480
	step
		#include "goto_sungshin"
		.learn Tangy Yogurt##124230
		|only if skill('Cooking')<=494
	step
		#include "goto_sungshin"
		.buy 3 Pandaren Peach##74660 |n
		.buy 3 Yak Milk##74852 |n
		.create 6 Tangy Yogurt##124230,Cooking,495
	step
		#include "goto_sungshin"
		.learn Pearl Milk Tea##125080
		|only if skill('Cooking')<=509
	step
		#include "goto_sungshin"
		.buy 6 Yak Milk##74852 |n
		.create Pearl Milk Tea##125080,Cooking,510
	step
		#include "goto_sungshin"
		.learn Wildfowl Ginseng Soup##125121
		|only if skill('Cooking')<=519
	step
		#include "goto_sungshin"
		.buy 2 Ginseng##74845
		|only if skill('Cooking')<=519
	step
		goto Krasarang Wilds 64.6,29.3
		.from Carp Hunter##58116+
		goto Valley of the Four Winds 54.81,36.81
		.from Glade Singer##58766,Glade Sprinter##58741,Glade Hunter##57299
		..collect 15 Wildfowl Breast##74839
		|only if skill('Cooking')<=519
	step
		#include "goto_sungshin"
		.create Wildfowl Ginseng Soup##125121,Cooking,520
]])


ZygorGuidesViewer:RegisterInclude("Cooking_PreMasteries",[[
	step
		goto Valley of the Four Winds 53.7,51.0
		.talk Sungshin Ironpaw##64231
		..accept Ready for Greatness##31302
	step
		goto 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.learn Rice Pudding##125122
		.buy 5 Rice##74851 |q 31302
		.buy 5 Yak Milk##74852 |q 31302
	step
		#include cooking_fire
		.create 5 Rice Pudding##125122,Cooking,5 total |q 31302/1
		.get 5 Rice Pudding##86069 |q 31302/2
	step
		goto 53.7,51.0
		.talk Sungshin Ironpaw##64231
		..turnin Ready for Greatness##31302
		..accept Way of the Grill##31311
		..accept Way of the Wok##31470
		..accept Way of the Pot##31472
		..accept Way of the Steamer##31475
		..accept Way of the Oven##31478
		..accept Way of the Brew##31479
	step
		goto 53.7,51.0
		.talk Sungshin Ironpaw##64231
		.buy 1 Ginseng##74845 |q 31480
	step
		goto 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy 1 Sack of Raw Tiger Steaks##87701 |n
		.use Sack of Raw Tiger Steaks##87701 
		.get 5 Raw Tiger Steak##74833 |q 31311/1
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		..turnin Way of the Grill##31311
		..accept Strong as a Tiger##31467
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		.learn Charbroiled Tiger Steak##104298 |q 31467/1
	step
		#include cooking_fire
		.create 5 Charbroiled Tiger Steak##104298,Cooking,5 total |n
		.' Cook #5# Charbroiled Tiger Steaks |q 31467/2
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		..turnin Strong as a Tiger##31467
	step
		goto 53.2,52.2
		.talk Bobo Ironpaw##58717
		..turnin Way of the Brew##31479
		..accept Have a Drink##31480
	step
		goto 53.0,51.3
		.talk Bobo Ironpaw##58717
		.learn Ginseng Tea##124052 |q 31480/1
	step
		#include cooking_fire
		.create 1 Ginseng Tea##124052,Cooking,1 total |n
		.get 1 Ginseng Tea##75026 |q 31480/2
	step
		goto 53.2,52.2
		.talk Bobo Ironpaw##58717
		..turnin Have a Drink##31480


	step
		goto 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy 1 Sack of Juicycrunch Carrots##87707 |n 
		'Use the Sack of Juicycrunch Carrots |use Sack of Juicycrunch Carrots##87707 
		.get 5 Juicycrunch Carrot##74841 |q 31470/1
	step
		goto 52.7,52.0
		.talk Anthea Ironpaw##58713
		..turnin Way of the Wok##31470
		..accept Agile as a Tiger##31471
	step
		goto 52.7,52.0
		.talk Anthea Ironpaw##58713
		.learn Sauteed Carrots##104301 |q 31471/1
	step
		#include cooking_fire
		.create 5 Sauteed Carrots##104301,Cooking,5 total |n
		.' Cook #5# Sauteed Carrots |q 31471/2
	step
		goto 52.7,52.0
		.talk Anthea Ironpaw##58713
		..turnin Agile as a Tiger##31471


	step
		goto 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy 1 Sack of Jade Lungfish##87721 |n
		'Use the Sack of Jade Lungfish |use Sack of Jade Lungfish##87721
		.get 5 Jade Lungfish##74856 |q 31472/1
		.buy 1 Sack of Mantis Shrimp##87722 |n
		'Use the Sack of Mantis Shrimp |use Sack of Mantis Shrimp##87722
		.get 5 Giant Mantis Shrimp##74857 |q 31475/1
		.buy 1 Sack of Wildfowl Breasts##87705 |n
		'Use the Sack of Wildfowl Breasts |use Sack of Wildfowl Breasts##87705
		.get 5 Wildfowl Breast##74839 |q 31478/1
	step
		goto 53.4,51.6
		.talk Jian Ironpaw##58716
		..turnin Way of the Oven##31478
		..accept Endurance##31477
	step
		goto 53.4,51.6
		.talk Jian Ironpaw##58716
		.learn Wildfowl Roast##104310 |q 31477/1
	step
		#include cooking_fire
		.create 5 Wildfowl Roast##104310,Cooking,5 total |n
		.' Cook #5# Wildfowl Roasts |q 31477/2
	step
		goto 53.4,51.6
		.talk Jian Ironpaw##58716
		..turnin Endurance##31477


	step
		goto 52.5,51.8
		.talk Yan Ironpaw##58715
		..turnin Way of the Steamer##31475
		..accept The Spirit of Cooking##31476
	step
		goto 52.5,51.8
		.talk Yan Ironpaw##58715
		.learn Shrimp Dumplings##104307 |q 31476/1
	step
		#include cooking_fire
		.create 5 Shrimp Dumplings##104307,Cooking,5 total |n
		.' Cook #5# Shrimp Dumplings |q 31476/2	
	step
		goto 52.5,51.8
		.talk Yan Ironpaw##58715
		..turnin The Spirit of Cooking##31476


	step
		goto 52.6,51.5
		.talk Mei Mei Ironpaw##58714
		..turnin Way of the Pot##31472
		..accept The Soup of Contemplation##31474
	step
		goto 52.6,51.5
		.talk Mei Mei Ironpaw##58714
		.learn Swirling Mist Soup##104304 |q 31474/1
	step
		#include cooking_fire
		.create 5 Swirling Mist Soup##104304,Cooking,5 total |n
		.' Cook #5# Swirling Mist Soup |q 31474/2
	step
		goto 52.6,51.5
		.talk Mei Mei Ironpaw##58714
		..turnin The Soup of Contemplation##31474
	step
		goto 53.5,51.2
		.talk Nam Ironpaw##64395
		..accept Preserving Freshness##31536
	step
		goto 53.0,52.4
		.talk Merchant Cheng##64940
		.buy 1 Empty Raw Tiger Steak Container##87658 |q 31536/1
	step
	label	final_quest
		goto 53.5,51.2
		.talk Nam Ironpaw##64395
		..turnin Preserving Freshness##31536
]])

ZygorGuidesViewer:RegisterInclude("token_start_MST",[[
	label	token_start_%MST%
		'You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
		.' You can farm any cooking ingredient and turn it into _Bundle of Groceries_
		|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice.
		.' For a good location to farm vegetables for tokens, click here |confirm |next farm_veggie_%MST%
		' Or
		.' For a good location to farm meat for tokens, click here |confirm |next farm_meat_%MST%
		' Or
		.' If you have ingredients to turn in for tokens, click here |confirm |next token_end_%MST%
		' Or
		.' Click here to turn in _Spirits of Harmony_ for Cooking Tokens. |confirm |next spirit
	step
	label	farm_veggie_%MST%
		goto Krasarang Wilds 46.0,86.6
		.from Unga Fish-Getter##60299+, Unga Villager##60358+
		..collect Jade Squash##74847 |n
		..collect Striped Melon##74848 |n
		.' You will need 100 of a vegetable to turn in for one token
		.' You have enough Squash to turn in for _{_G.floor(itemcount(74847)/100)} Tokens_
		.' You have enough Melon to turn in for _{_G.floor(itemcount(74848)/100)} Tokens_
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
		'Click here if you'd rather hunt some crocodiles for meat in the Dread Wastes. |next farm_meat_%MST% |confirm
		|confirm |next token_end_%MST%
	step
	label	farm_meat_%MST%
		goto Dread Wastes 65.6,58.2
		.from Coldbite Crocolisk##62023
		..collect Raw Crocolisk Belly##75014 |n
		.' You will need stacks of 20 meat to turn in for one token
		.' You have enough meat to turn in for _{_G.floor(itemcount(75014)/20)} Tokens_
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
		'Click here if you'd rather hunt some monkeys for vegetables in the Jade Forest. |next farm_veggie_%MST% |confirm
		|confirm |next token_end_%MST%
]])

-- unused
ZygorGuidesViewer:RegisterInclude("tokens_for_ingredient",[[
		' You need ingredients for _{_G.ceil(_G.max(0,((%ING_NEEDED%-itemcount(%ING_ID%))/%ING_PER_TOKEN%)-curcount(402)))}_ Tokens.
		' Your vegetables and meat will turn in for _{_G.floor(itemcount(74847)/100)+_G.floor(itemcount(74848)/100)+_G.floor(itemcount(75014)/20)}_ Tokens.
		|condition _G.floor(itemcount(74847)/100)+_G.floor(itemcount(74848)/100)+_G.floor(itemcount(75014)/20) >=  _G.ceil(_G.max(0,((%ING_NEEDED%-itemcount(%ING_ID%))/%ING_PER_TOKEN%)-curcount(402)))
]])

ZygorGuidesViewer:RegisterInclude("token_end_MST",[[
	label	token_end_%MST%
		goto Valley of the Four Winds 53.0,52.4
		.talk Merchant Cheng##64940
		.' Buy Empty containers and fill with any ingredients you have. 
		.' Once you are ready to turn in for tokens, click here |confirm |next token_repeat_%MST%
	step
	label token_repeat_%MST%
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		..turnin Replenishing the Pantry##31535 |repeatable |instant |n
		.' When you are done turning in the bundles of groceries, click here. |confirm |next %TARGET%
]])



ZygorGuidesViewer:RegisterInclude("Cooking_Oven",[[
//------------------- 520 -----------------
// 15 Wildfowl Breast##74839 (bought 5 with 1 Token)
	step
	title + Way of the Oven
	label	Cooking_Oven
		'Skipping 1st part of cooking |next "+twin_fish" |only if step:Find("+create_fowl"):IsComplete()
		'Proceeding to Wild Fowl Roast |next |only if default
	step
		goto Valley of the Four Winds 53.4,51.6
		.talk Jian Ironpaw##58716
		.learn Wild Fowl Roast##104310
	step
		#include "auctioneer"
		.buy 15 Wildfowl Breast##74839 |next create_fowl
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_oven
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_fowl
//oven token start
	step
		#include "token_start_MST",MST="oven"
	step
	label	spirit
		#include "Spirt_Harmony"
		.buy Ironpaw Token##402+ |n
		.' You have _{curcount(402)} Tokens_
		.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74839))/25)-curcount(402)))} Tokens_ to buy the ingredients you need for _15 Wildfowl Breasts_. |only if skill ("Cooking")<=549
		.' You need _{_G.ceil(_G.max(0,  ((26-itemcount(74865))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill("Cooking")>=550 and skill("Cooking")<=574
		.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74865))/5)+((50-itemcount(74837))/5)+((250-itemcount(74842))/25)+(5-itemcount(74853))-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=575 and skill("Cooking")<=599
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
		.'_
		.' Click here when you are ready to buy the ingredients with your Tokens |confirm |next buy
		' Or
		.' If you still do not have enough tokens, click here to go back to the token menu |confirm |next token_start_oven
	step
		#include "token_end_MST",MST="oven",TARGET="Cooking_Oven"
//oven token end
	step
	label	buy
		'Continuing to Wild Fowl Breast |next |only if default
		'Redirecting to Twin Fish Platter |next "twin_fish_bag" |only if step:Find("+create_fowl"):IsComplete()
	step
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Wildfowl Breasts##87705 |n
		.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74839))/5)-itemcount(87705)))}_ more Sacks to get the ingredients you need.
		.' Open the Sack to collect the ingredients |use Sack of Wildfowl Breasts##87705
		.collect 15 Wildfowl Breast##74839 |next "create_fowl"
		.' If you need more tokens, or wish to farm more ingredients, click here |confirm |next Cooking_Oven

	step
	label	farm_fowl
		goto Krasarang Wilds 64.6,29.3
		.from Carp Hunter##58116+
		.collect 15 Wildfowl Breast##74839


	step
	label	create_fowl
		#include cooking_fire
		.create 15 Wild Fowl Roast##104310,Cooking,15 total |n
		.skill Way of the Oven,550 |only if skill('Way of the Oven')>=550
		.' Achieve Way of the Oven 550 |confirm |only if skill("Way of the Oven")<=549

//------------------- 550 -----------------
// Krasarang Paddlefish##74865 (bought 5 with 1 Token)

	step
	label	twin_fish
		'Skipping 2nd part of cooking |next "+banquet_oven" |only if step:Find("+create_twin"):IsComplete()
		'Proceeding to End of Way of the Oven |next |only if default
	step
		goto Valley of the Four Winds 53.4,51.6
		.talk Jian Ironpaw##58716
		.learn Twin Fish Platter##104311
	step
		#include "auctioneer"
		.buy 26 Krasarang Paddlefish##74865 |next create_twin
		' Or
		.' Click here to use Cooking Tokens |confirm |next token_start_oven
		' Or
		.' Click here to farm the ingredients yourself |confirm |next farm_twin
	step
	label	farm_twin
		map Krasarang Wilds
		path loose; loop; curved
		path	37.4,35.2	42.9,38.7	43.4,46.0
		path	38.0,42.3	34.1,38.4	30.3,33.8
		.' Follow this river and use your fishing ability to catch Krasarang Paddlefish
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
		.collect 26 Krasarang Paddlefish##74865
		|next create_twin
	step
	label	twin_fish_bag
		'Redirecting to Banquet of the Oven |next "banquet_oven_bag" |only if step:Find("+create_twin"):IsComplete()
		'Proceeding to Twin Fish Platter |next |only if default
	step
		.buy Sack of Krasarang Paddlefish##87728 |n
		.' Open the Sack to collect the ingredients |use Sack of Krasarang Paddlefish##87728
		.' _{_G.ceil(_G.max(0,  ((26-itemcount(74839))/5)-itemcount(87705)))} Sacks_ will get the ingredients you need.
		.collect 26 Krasarang Paddlefish##74865
		.' If you need more tokens, or wish to farm more ingredients, click here |confirm |next Cooking_Oven
		|next create_twin
	step
	label	create_twin
		#include cooking_fire
		.create 12 Twin Fish Platter##104311,Cooking,12 total |n
		.skill Way of the Oven,575 |only if skill('Way of the Oven')>=575
		.' Achieve Way of the Oven 575 |confirm |only if skill("Way of the Oven")<=574
	step
	label	banquet_oven
		'Skipping 1st part of farming |next "+create_banquet_oven" |only if step:Find("+end_way_of_oven"):IsComplete()
		'Proceeding to farm |next |only if default
	step
		goto Valley of the Four Winds 53.4,51.6
		.talk Jian Ironpaw##58716
		.learn Banquet of the Oven##125600
	step
		#include "auctioneer"
		.buy 50 Krasarang Paddlefish##74865
		.buy 50 Raw Turtle Meat##74837
		.buy 250 Mogu Pumpkin##74842
		.buy 5 100 Year Soy Sauce##74853
		.' You can also buy the 5 _100 Year Soy Sauce_ from Nam Ironpaw.
		' Or
		.' Click here to use Cooking Tokens to purchase these ingredients |confirm |next token_start_oven
		' Or
		.' Click here to farm the ingredients yourself |confirm |next farm_banquet_oven_1
		|next create_banquet_oven
	step
		'Skipping 1st part of farming |next "+farm_banquet_oven_2" |only if step:Find("+farm_banquet_oven_1"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	farm_banquet_oven_1
		map Krasarang Wilds
		path loose; loop; curved
		path	37.4,35.2	42.9,38.7	43.4,46.0
		path	38.0,42.3	34.1,38.4	30.3,33.8
		.' Follow this river and use your fishing ability to catch Krasarang Paddlefish
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
		.collect 50 Krasarang Paddlefish##74865
	step
		'Skipping 2st part of farming |next "+farm_banquet_oven_3" |only if step:Find("+farm_banquet_oven_2"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	farm_banquet_oven_2
		goto Valley of the Four Winds 66.8,32.5
		.from Wyrmhorn Turtle##56256+
		.collect 50 Raw Turtle Meat##74837
	step
	label	farm_banquet_oven_3
		'Routing to proper section |next "farmmp" |only if completedq(30257)
		'Routing to proper section |next "killmp" |only if not completedq(30257)
	step
	label "farmmp"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		..collect 250 Mogu Pumpkin##74842 |next "create_banquet_oven"
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Mogu Pumpkin Seeds##80592 |only if completedq(30257) and not completedq(31936)
		.buy 8 Mogu Pumpkin Seeds##80592 |only if completedq(31936) and not completedq(31937)
		.buy 12 Mogu Pumpkin Seeds##80592 |only if completedq(31937) and not completedq(32682)
		.buy 16 Mogu Pumpkin Seeds##80592 |only if completedq(32682)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Mogu Pumpkin Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Mogu Pumpkins. Note that the mobs have a very low drop rate. |confirm |next "killmp"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmmp"
	step
	label "killmp"
		map Valley of the Four Winds
		path	78.9,21.6	80.8,19.6	82.8,17.9
		path	84.7,14.2	85.2,24.3	84.8,26.6
		path	82.7,31.5
		.from Snagtooth Pesterling##65504+
		.from Snagtooth Tool-Grabber##56185+
		.from Snagtooth Virmen##56184+
		.from Snagtooth Hooligan##56462+
		.from Snagtooth Troublemaker##55873+
		|tip The drop rate on these items from mobs is extremely low. We suggest using the Tillers' farm to plant seeds and grow these crops instead.
		..collect 250 Mogu Pumpkin##74842 |next "create_banquet_oven"
	step
	label	banquet_oven_bag
		'Redirecting to End of Way of the Oven |next "end_way_of_oven" |only if step:Find("+create_banquet_oven"):IsComplete()
		'Proceeding to Twin Fish Platter |next |only if default
	step
		.collect 5 100 Year Soy Sauce##74853
		.buy Sack of Mogu Pumpkins##87708 |n
		.' You need _{_G.ceil(_G.max(0,  ((250-itemcount(74865))/25)-itemcount(87708)))} Krasarang Sacks_
		.' Open the Sack to collect the ingredients |use Sack of Mogu Pumpkins##87708
		.collect 250 Mogu Pumpkin##74842
		.buy Sack of Raw Turtle Meat##87703 |n
		.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74837))/5)-itemcount(87703)))} Turtle Sacks_
		.' Open the Sack to collect the ingredients |use Sack of Raw Turtle Meat##87703
		.collect 50 Raw Turtle Meat##74837
		.buy Sack of Krasarang Paddlefish##87728 |n
		.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74865))/5)-itemcount(87728)))} Krasarang Sacks_
		.' Open the Sack to collect the ingredients |use Sack of Krasarang Paddlefish##87728
		.collect 50 Krasarang Paddlefish##74865	
		.' If you need more tokens, or wish to farm more ingredients, click here |confirm |next Cooking_Oven
	step
	label	create_banquet_oven
		#include cooking_fire
		.create 5 Banquet of the Oven##125600,Way of the Oven,600
		.skill Way of the Oven,600 |only if skill('Way of the Oven')>=600
		.' Achieve Way of the Oven 600 |confirm |only if skill("Way of the Oven")<=599
	step
	label	end_way_of_oven
		'Congratulations, you have maxed out the _Way of the Oven_ mastery for Cooking!
		.' Click here to return to the Cooking Mastery List |confirm |next cooking_mastery_start
	step
	label	mastery_end
		'Congratulations, you have maxed out all Cooking Masteries!
]])

ZygorGuidesViewer:RegisterInclude("Cooking_Brew",[[
	step
	title + Way of the Brew
	label	Cooking_Brew
		'Skipping 1st part of cooking |next "+jade_brew" |only if step:Find("+create_tea"):IsComplete()
		'Proceeding to Ginseng Tea |next |only if default
	step
		goto Valley of the Four Winds 53.0,52.0
		.talk Bobo Ironpaw##58717
		.learn Ginseng Tea##124052
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 19 Ginseng##74845
	step
	label	create_tea
		#include cooking_fire
		.create Ginseng Tea##124052,Cooking,19 total |n
		.skill Way of the Brew,550 |only if skill('Way of the Brew')>=550
		.' Achieve Way of the Brew 550 |confirm |only if skill("Way of the Brew")<=549
		|next jade_brew
//brew token start
	step
		#include "token_start_MST",MST="brew"
	step
	label	spirit
		#include "Spirt_Harmony"
		.buy Ironpaw Token##402+ |n
		.' You have _{curcount(402)} Tokens_
		.' You need _{_G.ceil(_G.max(0,  ((60-itemcount(74846))/25)+((60-itemcount(74847))/25)-curcount(402)))} more Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=550 and skill("Cooking")<=574
		.' You need _{_G.ceil(_G.max(0,  ((250-itemcount(74840))/25)+((250-itemcount(74846))/25)-curcount(402)))} more Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=575 and skill("Cooking")<=600
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
		.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next jade_brew_bag
		' Or
		.' If you still do not have enough tokens, click here to go back to the token menu |confirm |next token_start_brew
	step
		#include "token_end_MST",MST="brew"
//brew token end
	step
	label	jade_brew
		'Continuing to Jade Witch Brew |next |only if default
		'Redirecting to Banquet of the Brew |next "banquet_brew" |only if step:Find("+create_jade"):IsComplete()
	step
		goto Valley of the Four Winds 53.2,52.2
		.talk Bobo Ironpaw##58717
		.learn Jade Witch Brew##124053
	step
		#include "auctioneer"
		.buy 60 Witchberries##74846
		.buy 60 Jade Squash##74847
		' Or
		.' Click here to use Cooking Tokens |confirm |next token_start_brew |or
		' Or
		.' Click here to farm the ingredients yourself |confirm |next farm_jade_1 |or
		|next create_jade
	step
	label	farm_jade_1
		'Routing to proper section |next "farmwb" |only if completedq(30257)
		'Routing to proper section |next "killwb" |only if not completedq(30257)
	step
	label "farmwb"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 60 Witchberries##74846 |next "farm_jade_2"
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Witchberry Seeds##89326 |only if completedq(30257) and not completedq(31936)
		.buy 8 Witchberry Seeds##89326 |only if completedq(31936) and not completedq(31937)
		.buy 12 Witchberry Seeds##89326 |only if completedq(31937)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Witchberry Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Witchberriess. Note that the mobs have a very low drop rate. |confirm |next "killwb"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmwb"
	step
	label "killwb"
		goto Krasarang Wilds/0 61.8,40.3
		.from Riverblade Raider##59714+
		.from Riverblade Thief##64034+
		.collect 60 Witchberries##74846 |next "farm_jade_2"
		.' Click here if you wish to go back to your farm. |confirm |next "farmwb"
	step
	label	farm_jade_2
		'Routing to proper section |next "farmjsq" |only if completedq(30257)
		'Routing to proper section |next "killjsq" |only if not completedq(30257)
	step
	label "farmjsq"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 60 Jade Squash##74847 |next create_jade
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Jade Squash Seeds##89328 |only if completedq(30257) and not completedq(31936)
		.buy 8 Jade Squash Seeds##89328 |only if completedq(31936) and not completedq(31937)
		.buy 12 Jade Squash Seeds##89328 |only if completedq(31937)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Jade Squash Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Jade Squash. Note that the mobs have a very low drop rate. |confirm |next "killjsq"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmjsq"
	step
		goto Krasarang Wilds 46.0,86.6
		.from Unga Fish-Getter##60299+, Unga Villager##60358+
		.collect 60 Jade Squash##74847 |next create_jade
		.' Click here if you wish to go back to your farm. |confirm |next "farmjsq"
	step
	label	jade_brew_bag
		.buy Sack of Witchberries##87712 |n
		.' You need _{_G.ceil(_G.max(0, ((26-itemcount(74846))/25)-itemcount(87712)))} Sacks of Witchberries_
		.' Open the Sack to collect the ingredients |use Sack of Witchberries##87712
		.collect 60 Witchberries##74846
		.buy Sack of Jade Squash##87713 |n
		.' You need _{_G.ceil(_G.max(0, ((26-itemcount(74846))/25)-itemcount(87712)))} Sacks of Squash_
		.' Open the Sack to collect the ingredients |use Sack of Jade Squash##87713
		.collect 60 Jade Squash##74847
	step
	label	create_jade
		#include cooking_fire
		.create Jade Witch Brew##124053,Cooking,13 total |n
		.skill Way of the Brew,575 |only if skill('Way of the Brew')>=575
		.' Achieve Way of the Brew 575 |confirm |only if skill("Way of the Brew")<=574
	step
	label	banquet_brew
		'Skipping 1st part of farming |next "+end_way_of_brew" |only if step:Find("+create_banquet_brew"):IsComplete()
		'Proceeding to next Banquet |next |only if default
	step
		goto Valley of the Four Winds 53.0,52.0
		.talk Bobo Ironpaw##58717
		.learn Banquet of the Brew##125602
	step
		#include "auctioneer"
		.buy 5 100 Year Soy Sauce##74853
		.buy 250 Green Cabbage##74840
		.buy 250 Witchberries##74846
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_brew
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_banquet_brew_1
		|next create_banquet_brew
	step
	label	farm_banquet_brew_1
		'Routing to proper section |next "farm" |only if completedq(30257)
		'Routing to proper section |next "kill" |only if not completedq(30257)
	step
	label "farmwb"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 250 Witchberries##74846 |next "farm_banquet_brew_2"
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Witchberry Seeds##89326 |only if completedq(30257) and not completedq(31936)
		.buy 8 Witchberry Seeds##89326 |only if completedq(31936) and not completedq(31937)
		.buy 12 Witchberry Seeds##89326 |only if completedq(31937) and not completedq(32682)
		.buy 16 Witchberry Seeds##89326 |only if completedq(32682)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Witchberry Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Witchberriess. Note that the mobs have a very low drop rate. |confirm |next "killwb"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmwb"
	step
	label "killwb"
		goto Krasarang Wilds/0 61.8,40.3
		.from Riverblade Raider##59714+
		.from Riverblade Thief##64034+
		 goto Valley of the Four Winds 52.8,62.2
		.from Tricky Maizer##57223+, Kernel Sprite##660+
		.collect 250 Witchberries##74846 |next "farm_banquet_brew_2"
		.' Click here if you wish to go back to your farm. |confirm |next "farmwb" |only if completedq(30257)
	step
	label	farm_banquet_brew_2
		'Routing to proper section |next "farmgc" |only if completedq(30257)
		'Routing to proper section |next "killgc" |only if not completedq(30257)
	step
	label "farmgc"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 250 Green Cabbage##74840 |next "create_banquet_brew"
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Green Cabbage Seeds##79102 |only if completedq(30257) and not completedq(31936)
		.buy 8 Green Cabbage Seeds##79102 |only if completedq(31936) and not completedq(31937)
		.buy 12 Green Cabbage Seeds##79102 |only if completedq(31937) and not completedq(32682)
		.buy 16 Green Cabbage Seeds##79102 |only if completedq(32682)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Green Cabbage Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Green Cabbages. Note that the mobs have a very low drop rate. |confirm |next "killgc"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmgc"
	step
	label "killgc"
		map Valley of the Four Winds
		path	78.9,21.6	80.8,19.6	82.8,17.9
		path	84.7,14.2	85.2,24.3	84.8,26.6
		path	82.7,31.5
		.from Snagtooth Pesterling##65504+
		.from Snagtooth Tool-Grabber##56185+
		.from Snagtooth Virmen##56184+
		.from Snagtooth Hooligan##56462+
		.from Snagtooth Troublemaker##55873+
		|tip The drop rate on these items from mobs is extremely low. We suggest using the Tillers' farm to plant seeds and grow these crops instead.
		.collect 250 Green Cabbage##74840 |next "create_banquet_brew"
		.' Click here if you wish to go back to your farm. |confirm |next "farmgc" |only if completedq(30257)
	step
	label	banquet_brew_bag
		.buy Sack of Green Cabbages##87706 |n
		.' Open the Sack to collect the ingredients |use Sack of Green Cabbages##87706
		.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74840))/25)-itemcount(87706)))} Sacks of Cabbage_
		.collect 250 Green Cabbage##74840
		.buy Sack of Witchberries##87712 |n
		.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74846))/25)-itemcount(87712)))} Sacks of Cabbage_
		.' Open the Sack to collect the ingredients |use Sack of Witchberries##87712
		.collect 250 Witchberries##74846
		.collect 5 100 Year Soy Sauce##74853
	step
	label	create_banquet_brew
		#include cooking_fire
		.create Banquet of the Brew##125602,Cooking,5 total |n
		.skill Way of the Brew,600 |only if skill('Way of the Brew')>=600
		.' Achieve Way of the Brew 600 |confirm |only if skill("Way of the Brew")<=599
	step
	label	end_way_of_brew
		'Congratulations, you have maxed out the _Way of the Brew_ mastery for Cooking!
		|confirm |next cooking_mastery_start
]])

ZygorGuidesViewer:RegisterInclude("Cooking_Wok",[[
	step
	title + Way of the Wok
	label	Cooking_Wok
		'Skipping 1st part of cooking |next "+stir_fry" |only if step:Find("+create_carrot"):IsComplete()
		'Proceeding to Sauteed Carrots |next |only if default
	step
		goto Valley of the Four Winds 52.7,52.0
		.talk Anthea Ironpaw##58713
		.learn Sauteed Carrots##104301
	step
		#include "auctioneer"
		.buy 30 Juicycrunch Carrot##74841 |next create_carrot
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_wok
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_carrot
//wok token start
	step
		#include "token_start_MST",MST="wok"
	step
	label	spirit
		#include "Spirt_Harmony"
		.buy Ironpaw Token##402+ |n
		.' You have _{curcount(402)} Tokens_
		.' You need _{_G.ceil(_G.max(0,  ((30-itemcount(74841))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Cooking")<=549
		.' You need _{_G.ceil(_G.max(0,  ((13-itemcount(74864))/5)+((13-itemcount(74839))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill("Cooking")>=550 and skill("Cooking")<=574
		.' You need _{_G.ceil(_G.max(0,  ((5-itemcount(74853))/5)+((50-itemcount(74857))/5)+((50-itemcount(75014))/5)+((250-itemcount(74844))/25)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=575 and skill("Cooking")<=599
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
		.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
		' Or
		.' If you still do not have enough tokens, click here to go back to the token menu |confirm |next token_start_wok
	step
		#include "token_end_MST",MST="wok"
//wok token end
	step
	label	 buy
		'Continuing to Sauteed Carrots |next |only if default
		'Redirecting to Valley Stir Fry |next "stir_fry_bag" |only if step:Find("+create_carrot"):IsComplete()
	step
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Juicycrunch Carrots##87707 |n
		.' You need _{_G.ceil(_G.max(0, ((30-itemcount(74841))/5)-itemcount(87707)))} Sacks of Carrots_
		.' Open the Sack to collect the ingredients |use Sack of Juicycrunch Carrots##87707
		.collect 30 Juicycrunch Carrot##74841
		|next create_carrot
	step
	label	farm_carrot
		'Routing to proper section |next "farmjcc" |only if completedq(30257)
		'Routing to proper section |next "killjcc" |only if not completedq(30257)
	step
	label "farmjcc"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 30 Juicycrunch Carrot##74841 |next "create_carrot"
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Juicycrunch Carrot Seeds##80590 |only if completedq(30257) and not completedq(31936)
		.buy 6 Juicycrunch Carrot Seeds##80590 |only if completedq(31936)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Juicycrunch Carrot Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Juicycrunch Carrots. Note that the mobs have a very low drop rate. |confirm |next "killjcc"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmjcc"
	step
		goto Valley of the Four Winds 86.5,28.5
		.from Snagtooth Hooligan##56462+
		.collect 30 Juicycrunch Carrot##74841 |next "create_carrot"
		.' Click here if you wish to go back to your farm. |confirm |next "farmjcc" |only if completedq(30257)
	step
	label	create_carrot
		#include cooking_fire
		.create Sauteed Carrots##104301,Cooking,15 total |n
		.skill Way of the Wok,550 |only if skill('Way of the Wok')>=550
		.' Achieve Way of the Wok 550 |confirm |only if skill("Way of the Wok")<=549
	step
	label	stir_fry
		'Skipping 2nd part of cooking |next "+end_way_of_wok" |only if step:Find("+create_banquet_wok"):IsComplete()
		'Proceeding to End of Way of the Wok |next |only if default
	step
		goto Valley of the Four Winds 52.7,52.0
		.talk Anthea Ironpaw##58713
		.learn Valley Stir Fry##104302
	step
		#include "auctioneer"
		.buy 13 Reef Octopus##74864
		.buy 13 Wildfowl Breast##74839
		' Or
		.' Click here to use Cooking Tokens |confirm |next token_start_wok
		' Or
		.' Click here to farm the ingredients yourself |confirm |next farm_stir_fry_1
		|tip You should at least have 525 fishing for this.
	step
	label	farm_stir_fry_1
		goto Krasarang Wilds 67.9,49.6
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 13 Reef Octopus##74864
	step
		'Skipping farming |next "+create_stir_fry" |only if step:Find("+farm_stir_fry_2"):IsComplete()
		'Proceeding to Valley Stir Fry |next |only if default
	step
	label	farm_stir_fry_2
		goto Krasarang Wilds 64.6,29.3
		.from Carp Hunter##58116+
		.collect 13 Wildfowl Breast##74839
		|next create_stir_fry
	step
	label	stir_fry_bag
		'Continuing to Sauteed Carrots |next |only if default
		'Redirecting to Banquet of the Wok |next "banquet_wok_bag" |only if step:Find("+create_stir_fry"):IsComplete()
	step
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Wildfowl Breasts##87705 |n
		.' You need _{_G.ceil(_G.max(0, ((13-itemcount(74839))/5)-itemcount(87705)))} Sacks of Wildfowl_
		.' Open the Sack to collect the ingredients |use Sack of Wildfowl Breasts##87705
		.collect 13 Wildfowl Breast##74839
		.buy Sack of Reef Octopus##87727 |n
		.' You need _{_G.ceil(_G.max(0, ((13-itemcount(74864))/5)-itemcount(87727)))} Sacks of Octopus_
		.' Open the Sack to collect the ingredients |use Sack of Reef Octopus##87727
		.collect 13 Reef Octopus##74864
		|next create_stir_fry
	step
	label	create_stir_fry
		#include cooking_fire
		.create Fire Spirit Salmon##104308,Cooking,13 total |n
		.skill Way of the Wok,575 |only if skill('Way of the Wok')>=575
		.' Achieve Way of the Wok 575 |confirm |only if skill("Way of the Wok")<=574
	step
	label	banquet_wok
		'Skipping 1st part of farming |next "+create_banquet_wok" |only if step:Find("+end_way_of_wok"):IsComplete()
		'Proceeding to farm |next |only if default
	step
		goto Valley of the Four Winds 52.7,52.0
		.talk Anthea Ironpaw##58713
		.learn Banquet of the Wok##125584
	step
		#include "auctioneer"
		.buy 50 Giant Mantis Shrimp##74857
		.buy 50 Raw Crocolisk Belly##75014
		.buy 250 Red Blossom Leek##74844
		.buy 5 100 Year Old Soy Sauce##74853
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_wok
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_banquet_wok_1
		|next create_banquet_wok
	step
		'Skipping 1st part of farming |next "+farm_banquet_wok_2" |only if step:Find("+farm_banquet_wok_1"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	farm_banquet_wok_1
		goto Krasarang Wilds 67.9,49.6
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 50 Giant Mantis Shrimp##74857
	step
		'Skipping 2st part of farming |next "+farm_banquet_wok_3" |only if step:Find("+farm_banquet_wok_2"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	farm_banquet_wok_2
		goto Dread Wastes 65.6,58.2
		.from Coldbite Crocolisk##62023
		.collect 50 Raw Crocolisk Belly##75014
	step
	label	farm_banquet_wok_3
		'Routing to proper section |next "farmrbl" |only if completedq(30257)
		'Routing to proper section |next "killrbl" |only if not completedq(30257)
	step
	label "farmrbl"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 250 Red Blossom Leek##74844 |next create_banquet_wok
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Red Blossom Leek Seeds##80593 |only if completedq(30257) and not completedq(31936)
		.buy 8 Red Blossom Leek Seeds##80593 |only if completedq(31936) and not completedq(31937)
		.buy 12 Red Blossom Leek Seeds##80593 |only if completedq(31937) and not completedq(32682)
		.buy 16 Red Blossom Leek Seeds##80593 |only if completedq(32682)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Red Blossom Leek Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Red Blossom Leeks. Note that the mobs have a very low drop rate. |confirm |next "killrbl"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmrbl"
	step
	label "killrbl"
		goto Valley of the Four Winds 86.5,28.5
		.from Snagtooth Hooligan##56462+
		.collect 250 Red Blossom Leek##74844 |next create_banquet_wok
		.' If you are friendly with the Hozen, you can kill Sprites to get these. They do have a low drop rate though. [Valley of the Four Winds 52.6,62.8]
		.' Click here if you wish to go back to your farm. |confirm |next "farmrbl"
	step
	label	banquet_wok_bag
		.buy Sack of Mantis Shrimp##87722 |n
		.' You need _{_G.ceil(_G.max(0, ((50-itemcount(74857))/5)-itemcount(87722)))} Sacks of Shrimp_
		.' Open the Sack to collect the ingredients |use Sack of Mantis Shrimp##87722
		.collect 50 Giant Mantis Shrimp##74857
		.buy Sack of Crocolisk Belly##87730 |n
		.' You need _{_G.ceil(_G.max(0, ((50-itemcount(75014))/5)-itemcount(87730)))} Sacks of Crocolisk_
		.' Open the Sack to collect the ingredients |use Sack of Crocolisk Belly##87730
		.collect 50 Raw Crocolisk Belly##75014
		.buy Sack of Red Blossom Leeks##87710 |n
		.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74844))/25)-itemcount(87710)))} Sacks of Red Blossom Leeks_
		.' Open the Sack to collect the ingredients |use Sack of Red Blossom Leeks##87710
		.collect 250 Red Blossom Leek##74844
	step
	label	create_banquet_wok
		#include cooking_fire
		.create Banquet of the Wok##125594,Cooking,5 total |n
		.skill Way of the Wok,600 |only if skill('Way of the Wok')>=600
		.' Achieve Way of the Wok 600 |confirm |only if skill("Way of the Wok")<=599
	step
	label	end_way_of_wok
		'Congratulations, you have maxed out the _Way of the Wok_ mastery for Cooking!
		.' Click here to return to the Cooking Mastery List |confirm |next cooking_mastery_start
]])

ZygorGuidesViewer:RegisterInclude("Cooking_Steamer",[[
	step
	title + Way of the Steamer
	label Cooking_Steamer
		'Skipping 1st part of cooking |next "+fire_spirit" |only if step:Find("+create_shrimp"):IsComplete()
		'Proceeding to Sauteed Carrots |next |only if default
	step
		goto Valley of the Four Winds 52.7,52.0
		.talk Anthea Ironpaw##58713
		.learn Shrimp Dumplings##104307
	step
		#include "auctioneer"
		.buy 15 Giant Mantis Shrimp##74857 |next create_shrimp
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_steam
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_shrimp
//steam token start
	step
		#include "token_start_MST",MST="steamer"
	step
	label	spirit
		#include "Spirt_Harmony"
		.buy Ironpaw Token##402+ |n
		.' You have _{curcount(402)} Tokens_
		.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74857))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Cooking")<=549
		.' You need _{_G.ceil(_G.max(0,  ((13-itemcount(74859))/5)+((60-itemcount(74843))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill("Cooking")>=550 and skill("Cooking")<=574
		.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74859))/5)+((50-itemcount(74839))/5)+((250-itemcount(74847))/25)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill("Cooking")>=575 and skill("Cooking")<=599
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
		.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
		' Or
		.' If you still do not have enough tokens, click here to go back to the token menu |confirm |next token_start_steam
	step
		#include "token_end_MST",MST="steamer"
//steam token end
	step
	label buy
		'Continuing to Shrimp Dumplings |next |only if default
		'Redirecting to Banquet of the Steam |next "banquet_steam_bag" |only if step:Find("+create_fire_spirit"):IsComplete()
		'Redirecting to Fire Spirit Salmon |next "fire_spirit_bag" |only if step:Find("+create_shrimp"):IsComplete()
	step
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Giant Mantis Shrimp##87722 |n
		.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(87722))/5)-itemcount(87707)))} Sacks of Shrimp_
		.' Open the Sack to collect the ingredients |use Sack of Giant Mantis Shrimp##87722
		.collect 15 Giant Mantis Shrimp##74857
		|next create_shrimp
	step
	label	farm_shrimp
		goto Krasarang Wilds 67.9,49.6
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 50 Giant Mantis Shrimp##74857
	step
	label	create_shrimp
		#include cooking_fire
		.create Shrimp Dumplings##104307,Cooking,15 total |n
		.skill Way of the Steamer,550 |only if skill('Way of the Steamer')>=550
		.' Achieve Way of the Steamer 550 |confirm |only if skill("Way of the Steamer")<=549
	step
	label	fire_spirit
		'Skipping 2nd part of cooking |next "+end_way_of_steam" |only if step:Find("+create_banquet_steam"):IsComplete()
		'Proceeding to End of Way of the Steamer |next |only if default
	step
		goto Valley of the Four Winds/0 52.6,51.7
		.talk Yan Ironpaw##58715
		.learn Fire Spirit Salmon##104308
	step
		#include "auctioneer"
		.buy 13 Emperor Salmon##74859
		.buy 65 Scallions##74843
		' Or
		.' Click here to use Cooking Tokens |confirm |next token_start_steam
		' Or
		.' Click here to farm the ingredients yourself |confirm |next farm_fire_spirit_1
		|tip You should at least have 525 fishing for this.
	step
	label	farm_fire_spirit_1
		goto Krasarang Wilds 37.4,35.2
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 13 Emperor Salmon##74859
	step
	label	farm_fire_spirit_2
		'Routing to proper section |next "farmscal" |only if completedq(30257)
		'Routing to proper section |next "killscal" |only if not completedq(30257)

	step
	label "farmscal"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 65 Scallions##74843 |next "create_fire_spirit"
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Scallion Seeds##80591 |only if completedq(30257) and not completedq(31936)
		.buy 8 Scallion Seeds##80591 |only if completedq(31936) and not completedq(31937)
		.buy 12 Scallion Seeds##80591 |only if completedq(31937) and not completedq(32682)
		.buy 13 Scallion Seeds##80591 |only if completedq(32682)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Scallion Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Scallions. Note that the mobs have a very low drop rate. |confirm |next "killscal"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmscal"
	step
	label "killscal"
		goto Krasarang Wilds 62.0,40.6
		.from Riverblade Raider##59714+, Riverblade Thief##64034+
		.collect 65 Scallions##74843 |next "create_fire_spirit"
		.' Click here if you wish to go back to your farm. |confirm |next "farmscal" |only if completedq(30257)
	step
	label	fire_spirit_bag
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Emperor Salmon##87723 |n
		.' You need _{_G.ceil(_G.max(0,  ((13-itemcount(74859))/5)-itemcount(87723)))} Sacks of Salmon_
		.' Open the Sack to collect the ingredients |use Sack of Emperor Salmon##87723
		.collect 13 Emperor Salmon##74859
		.buy Sack of Scallions##87709 |n
		.' You need _{_G.ceil(_G.max(0,  ((65-itemcount(74843))/25)-itemcount(87709)))} Sacks of Scallions_
		.' Open the Sack to collect the ingredients |use Sack of Scallions##87709
		.collect 65 Scallions##74843
		|next create_fire_spirit
	step
	label	create_fire_spirit
		#include cooking_fire
		.create Fire Spirit Salmon##104308,Cooking,13 total |n
		.skill Way of the Steamer,575 |only if skill('Way of the Steamer')>=575
		.' Achieve Way of the Steamer 575 |confirm |only if skill("Way of the Steamer")<=574
	step
	label	banquet_steam
		'Skipping 1st part of farming |next "+create_banquet_steam" |only if step:Find("+end_way_of_steam"):IsComplete()
		'Proceeding to farm |next |only if default
	step
		goto Valley of the Four Winds/0 52.6,51.7
		.talk Yan Ironpaw##58715
		.learn Banquet of the Steamer##125598
	step
		#include "auctioneer"
		.buy 50 Emperor Salmon##74859
		.buy 50 Wildfowl Breast##74839
		.buy 250 Jade Squash##74847
		.buy 5 100 Year Old Soy Sauce##74853
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_steam
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_banquet_steam_1
		|next create_banquet_steam
	step
		'Skipping 1st part of farming |next "+farm_banquet_steam_2" |only if step:Find("+farm_banquet_steam_1"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	farm_banquet_steam_1
		goto Krasarang Wilds 37.4,35.2
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 50 Emperor Salmon##74859
	step
		'Skipping 2st part of farming |next "+farm_banquet_steam_3" |only if step:Find("+farm_banquet_steam_2"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	farm_banquet_steam_2
		goto Krasarang Wilds 64.6,29.3
		.from Carp Hunter##58116+
		.collect 50 Wildfowl Breast##74839
	step
	label	farm_banquet_steam_3
		'Routing to proper section |next "farmjsq" |only if completedq(30257)
		'Routing to proper section |next "killjsq" |only if not completedq(30257)
	step
	label "farmjsq"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 250 Jade Squash##74847 |next create_banquet_steam
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Jade Squash Seeds##89328 |only if completedq(30257) and not completedq(31936)
		.buy 8 Jade Squash Seeds##89328 |only if completedq(31936) and not completedq(31937)
		.buy 12 Jade Squash Seeds##89328 |only if completedq(31937) and not completedq(32682)
		.buy 16 Jade Squash Seeds##89328 |only if completedq(32682)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Jade Squash Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Jade Squash. Note that the mobs have a very low drop rate. |confirm |next "killjsq"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmjsq"
	step
		goto Krasarang Wilds 46.0,86.6
		.from Unga Fish-Getter##60299+, Unga Villager##60358+
		.collect 250 Jade Squash##74847 |next create_banquet_steam
		.' Click here if you wish to go back to your farm. |confirm |next "farmjsq"
	step
	label	banquet_steam_bag
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Wildfowl Breasts##87705 |n
		.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74839))/5)-itemcount(87705)))} Sacks of Wildfowl_
		.' Open the Sack to collect the ingredients |use Sack of Wildfowl Breasts##87705
		.collect 50 Wildfowl Breast##74839
		.buy Sack of Emperor Salmon##87723 |n
		.' You need _{_G.ceil(_G.max(0, ((50-itemcount(74859))/5)-itemcount(87723)))} Sacks of Salmon_
		.' Open the Sack to collect the ingredients |use Sack of Emperor Salmon##87723
		.collect 50 Emperor Salmon##74859
		.buy Sack of Jade Squash##87713 |n
		.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74847))/25)-itemcount(87713)))} Sacks of Shrimp_
		.' Open the Sack to collect the ingredients |use Sack of Jade Squash##87713
		.buy 250 Jade Squash##74847
		.buy 5 100 Year Old Soy Sauce##74853
	step
	label	create_banquet_steam
		#include cooking_fire
		.create Banquet of the Steamer##125598,Cooking,5 total |n
		.skill Way of the Steamer,600 |only if skill('Way of the Steamer')>=600
		.' Achieve Way of the Steamer 600 |confirm |only if skill("Way of the Steamer")<=599
	step
	label	end_way_of_steam
		'Congratulations, you have maxed out the _Way of the Steamer_ mastery for Cooking!
		.' Click here to return to the Cooking Mastery List |confirm |next cooking_mastery_start
]])

ZygorGuidesViewer:RegisterInclude("Cooking_Pot",[[
	step
	title + Way of the Pot
	label	Cooking_Pot
		'Skipping 1st part of cooking |next "+braised_turtle" |only if step:Find("+create_mist"):IsComplete()
		'Proceeding to Sauteed Carrots |next |only if default
	step
		goto Valley of the Four Winds 52.6,51.6
		.talk Mei Mei Ironpaw##58714
		.learn Swirling Mist Soup##104304
	step
		#include "auctioneer"
		.buy 15 Jade Lungfish##74856 |next create_mist
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_pot
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_jadefish
//Pot token start
	step
		#include "token_start_MST",MST="pot"
	step
	label	spirit
		#include "Spirt_Harmony"
		.buy Ironpaw Token##402+ |n
		.' You have _{curcount(402)} Tokens_
		.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74856))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Way of the Pot")<=549
		.' You need _{_G.ceil(_G.max(0,  ((13-itemcount(74837))/5)+((60-itemcount(74841))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill('Way of the Pot')>=550 and skill('Way of the Pot')<=574
		.' You need _{_G.ceil(_G.max(0,  ((250-itemcount(74841))/25)+((50-itemcount(74834))/5)+((50-itemcount(74864))/5)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill('Way of the Pot')>=575 and skill('Way of the Pot')<=599
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
		.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
		' Or
		.' If you still do not have enough tokens, click here to go back to the token menu |confirm |next token_start_pot
	step
		#include "token_end_MST",MST="pot"
//Pot token end
	step
	label	 buy
		'Continuing to Swirling Mist Soup |next |only if default
		'Redirecting to Braised Turtle |next "braised_turtle_bag" |only if step:Find("+create_mist"):IsComplete()
	step
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Jade Lungfish##87721 |n
		.' You need _{_G.ceil(_G.max(0, ((15-itemcount(74856))/5)-itemcount(87721)))} Sacks of Lungfish_
		.' Open the Sack to collect the ingredients |use Sack of Jade Lungfish##87721
		.collect 15 Jade Lungfish##74856
		|next create_mist
	step
	label	farm_jadefish
		goto The Jade Forest 55.0,71.1
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##131474
		.collect 15 Jade Lungfish##74856
	step
	label	create_mist
		#include cooking_fire
		.create 15 Swirling Mist Soup##104304,Cooking,5 total |n
		.skill Way of the Pot,550 |only if skill('Way of the Pot')>=550
		.' Achieve Way of the Pot 550 |confirm |only if skill("Way of the Pot")<=549
	step
	label	braised_turtle
		'Skipping 2nd part of cooking |next "+end_way_of_pot" |only if step:Find("+create_banquet_pot"):IsComplete()
		'Proceeding to Braised Turtle |next |only if default
	step
		goto Valley of the Four Winds 52.6,51.6
		.talk Mei Mei Ironpaw##58714
		.learn Braised Turtle##104305
	step
		#include "auctioneer"
		.buy 13 Raw Turtle Meat##74837
		.buy 60 Juicycrunch Carrot##74841
		' Or
		.' Click here to use Cooking Tokens |confirm |next token_start_pot
		' Or
		.' Click here to farm the ingredients yourself |confirm |next farm_braised_1
	step
	label	farm_braised_1
		goto Valley of the Four Winds 67.3,29.4
		.from Wyrmhorn Turtle##56256+
		.collect 13 Raw Turtle Meat##74837
	step
	label	farm_braised_2
		'Routing to proper section |next "farmjcc" |only if completedq(30257) and itemcount(74841)<60
		'Routing to proper section |next "killjcc" |only if not completedq(30257) and itemcount(74841)<60
		'Routing to proper section |next "donejcc" |only if itemcount(74841)>60
	step
	label "farmjcc"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 60 Juicycrunch Carrot##74841 |next "donejcc"
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Juicycrunch Carrot Seeds##80590 |only if completedq(30257) and not completedq(31936)
		.buy 8 Juicycrunch Carrot Seeds##80590 |only if completedq(31936) and not completedq(31937)
		.buy 12 Juicycrunch Carrot Seeds##80590 |only if completedq(31937) and not completedq(32682)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Juicycrunch Carrot Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Juicycrunch Carrots. Note that the mobs have a very low drop rate. |confirm |next "killjcc"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmjcc"
	step
		goto Valley of the Four Winds 86.5,28.5
		.from Snagtooth Hooligan##56462+
		.collect 60 Juicycrunch Carrot##74841 |next "donejcc"
		.' Click here if you wish to go back to your farm. |confirm |next "farmjcc" |only if completedq(30257)
	step
	label "donejcc"
		'Continuing to Braised Turtle |only if default
		'Redirecting to Banquet of the pot |next "banquet_pot_bag" |only if step:Find("+create_braised_turtle"):IsComplete()
	step
	label	braised_turtle_bag
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Raw Turtle Meat##87703 |n
		.' You need _{_G.ceil(_G.max(0, ((13-itemcount(74837))/5)-itemcount(87703)))} Turtle Meat_
		.' Open the Sack to collect the ingredients |use Sack of Raw Turtle Meat##87703
		.collect 13 Raw Turtle Meat##74837
		.buy Sack of Juicycrunch Carrots##87707 |n
		.' You need _{_G.ceil(_G.max(0, ((60-itemcount(74841))/25)-itemcount(87707)))} Carrots_
		.' Open the Sack to collect the ingredients |use Sack of Juicycrunch Carrots##87707
		.collect 60 Juicycrunch Carrot##74841
		|next create_braised_turtle
	step
	label	create_braised_turtle
		#include cooking_fire
		.create Braised Turtle##104305,Cooking,12 total |n
		.skill Way of the Pot,575 |only if skill('Way of the Pot')>=575
		.' Achieve Way of the Pot level 575 |confirm |only if skill('Way of the Pot')<=574
	step
	label	banquet_pot
		'Skipping 1st part of farming |next "+create_banquet_pot" |only if step:Find("+end_way_of_pot"):IsComplete()
		'Proceeding to farm |next |only if default
	step
		goto Valley of the Four Winds 52.6,51.6
		.talk Mei Mei Ironpaw##58714
		.learn Banquet of the Pot##125596
	step
		#include "auctioneer"
		.buy 50 Reef Octopus##74864
		.buy 50 Mushan Ribs##74834
		.buy 250 Juciycrunch Carrot##74841
		.buy 5 100 Year Old Soy Sauce##74853
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_pot
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_banquet_pot_1
		|next create_banquet_pot
	step
		'Skipping 1st part of farming |next "+farm_banquet_pot_2" |only if step:Find("+farm_banquet_pot_1"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	farm_banquet_pot_1
		goto Krasarang Wilds 67.9,49.6
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##131474
		.collect 50 Reef Octopus##74864
	step
	label	farm_banquet_pot_2
		goto Valley of the Four Winds 24.6,75.9
		.from Dustback Warder##65627+, Young Dustback Mushan##58427+
		.collect 50 Mushan Ribs##74834
	step
	label	farm_banquet_pot_3
		'Routing to proper section |next "farmjcc" |only if completedq(30257) and itemcount(74841)<250
		'Routing to proper section |next "killjcc" |only if not completedq(30257) and itemcount(74841)<250
		'Routing to proper section |next "farm_banquet_pot_4" |only if itemcount(74841)>250
	step
	label "farmjcc"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 250 Juicycrunch Carrot##74841 |next "farm_banquet_pot_4"
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Juicycrunch Carrot Seeds##80590 |only if completedq(30257) and not completedq(31936)
		.buy 8 Juicycrunch Carrot Seeds##80590 |only if completedq(31936) and not completedq(31937)
		.buy 12 Juicycrunch Carrot Seeds##80590 |only if completedq(31937) and not completedq(32682)
		.buy 16 Juicycrunch Carrot Seeds##80590 |only if completedq(32682)
		|only if completedq(30257)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Juicycrunch Carrot Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Juicycrunch Carrots. Note that the mobs have a very low drop rate. |confirm |next "killjcc"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmjcc"
	step
		goto Valley of the Four Winds 86.5,28.5
		.from Snagtooth Hooligan##56462+
		.collect 250 Juicycrunch Carrot##74841 |next "farm_banquet_pot_4"
		.' Click here if you wish to go back to your farm. |confirm |next "farmjcc" |only if completedq(30257)
	step
	label	farm_banquet_pot_4
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy 100 Year Old Soy Sauce##74853 |n
		.' You need _{_G.ceil(_G.max(0, ((5-itemcount(74853)))))} 100 Year Old Soy Sauce_
		.collect 5 100 Year Old Soy Sauce##74853
	step
	label	banquet_pot_bag
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Reef Octopus##87727 |n
		.' You need _{_G.ceil(_G.max(0, ((1-itemcount(74864))/5)-itemcount(87727)))} Sacks of Octopus_
		.' Open the Sack to collect the ingredients |use Sack of Reef Octopus##87727
		.collect 50 Reef Octopus##74864
		.buy Sack of Mushan Ribs##87702 |n
		.' You need _{_G.ceil(_G.max(0, ((50-itemcount(74834))/5)-itemcount(87702)))} Sacks of Ribs_
		.' Open the Sack to collect the ingredients |use Sack of Mushan Ribs##87702
		.collect 50 Mushan Ribs##74834
		.buy Sack of Juicycrunch Carrots##87707 |n
		.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74841))/25)-itemcount(87707)))} Sacks of Carrots_
		.' Open the Sack to collect the ingredients |use Sack of Juicycrunch Carrots##87707
		.collect 250 Juicycrunch Carrot##74841
		.buy 100 Year Old Soy Sauce##74853 |n
		.' You need _{_G.ceil(_G.max(0, ((5-itemcount(74853)))))} 100 Year Old Soy Sauce_
		.collect 5 100 Year Old Soy Sauce##74853
	step
	label	create_banquet_pot
		#include cooking_fire
		.create Banquet of the pot##125596,Cooking,5 total |n
		.skill Way of the Pot,600 |only if skill('Way of the Pot')>=600
		.' Achieve Way of the Pot level 600 |confirm |only if skill('Way of the Pot')<=599
	step
	label	end_way_of_pot
		'Congratulations, you have maxed out the _Way of the Pot_ mastery for Cooking!
		.' Click here to return to the Cooking Mastery List |confirm |next cooking_mastery_start
]])

ZygorGuidesViewer:RegisterInclude("Cooking_Grill",[[
	step
	title + "Way of the Grill"
	label Cooking_Grill
		'Skipping 1st part of cooking |next "+eternal_blossom" |only if step:Find("+create_tiger_steak"):IsComplete()
		'Proceeding to Tiger Steak |next |only if default
	step
		goto Valley of the Four Winds 52.7,52.0
		.talk Kol Ironpaw##58712
		.learn Charbroiled Tiger Steak##104298
	step
		#include "auctioneer"
		.buy 15 Raw Tiger Steak##74833 |next create_tiger_steak
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_grill
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_tiger
//Grill token start
	step
		#include "token_start_MST",MST="grill"
	step
	label	spirit
		#include "Spirt_Harmony"
		.buy Ironpaw Token##402+ |n
		.' You have _{curcount(402)} Tokens_
		.' You need _{_G.ceil(_G.max(0,  ((15-itemcount(74857))/5)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill ("Way of the Grill")<=549
		.' You need _{_G.ceil(_G.max(0,  ((13-itemcount(74856))/5)+((60-itemcount(74848))/25)-curcount(402)))} Tokens_ to buy the ingredients you need. |only if skill("Way of the Grill")>=550 and skill("Way of the Grill")<=574
		.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74860))/5)+((50-itemcount(74838))/5)+((250-itemcount(74850))/25)-curcount(402)))} Tokens_ to buy the ingredients to cook |only if skill("Way of the Grill")>=575 and skill("Way of the Grill")<=599
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
		.' Click here when you are ready to buy Sacks of Meat with your Tokens |confirm |next buy
		' Or
		.' If you still do not have enough tokens, click here to go back to the token menu |confirm |next token_start_grill
	step
		#include "token_end_MST",MST="grill"
//Grill token end
	step
	label	 buy
		'Continuing to Tiger Steak |next |only if default
		'Redirecting to Fire Spirit Salmon |next "eternal_blossom" |only if step:Find("+create_tiger_steak"):IsComplete()
	step
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Raw Tiger Steak##87701 |n
		.' You need _{_G.ceil(_G.max(0, ((15-itemcount(74833))/5)-itemcount(87701)))} Sacks of Raw Tiger Steak_
		.' Open the Sack to collect the ingredients |use Sack of Raw Tiger Steak##87701
		.collect 15 Raw Tiger Steak##74833
		|next create_tiger_steak
	step
	label	farm_tiger
		goto Krasarang Wilds 66.0,28.4
		.from Krasari Huntress##58070+
		.' If you want to travel a little further, you can farm Tiger Meat here with a higher spawn rate.
		.' Go to [The Jade Forest 62.5,24.3]
		.from Windward Tiger##63537+
		.collect 15 Raw Tiger Steak##74833
	step
	label	create_tiger_steak
		#include cooking_fire
		.create Charboiled Tiger Steak##104298,Cooking,15 total |n
		.skill Way of the Grill,550 |only if skill('Way of the Grill')>=550
		.' Achieve Way of the Grill level 550 |confirm |only if skill('Way of the Grill')<=549
	step
	label	eternal_blossom
		'Skipping 2nd part of cooking |next "+banquet_grill" |only if step:Find("+create_eternal_blossom"):IsComplete()
		'Proceeding to Eternal Blossom Fish |next |only if default
	step
		goto Valley of the Four Winds 53.0,51.4
		.talk Kol Ironpaw##58712
		.learn Eternal Blossom Fish##104299
	step
		#include "auctioneer"
		.buy 13 Jade Lungfish##74856
		.buy 65 Striped Melon##74848
		' Or
		.' Click here to use Cooking Tokens |confirm |next token_start_grill
		' Or
		.' Click here to farm the ingredients yourself |confirm |next farm_eternal_blossom_1
		|tip You should at least have 525 fishing for this.
	step
	label	farm_eternal_blossom_1
		goto The Jade Forest 55.0,71.1
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##131474
		.collect 13 Jade Lungfish##74856
	step
	label	farm_eternal_blossom_2
		'Routing to proper section |next "farmsm" |only if completedq(30257)
		'Routing to proper section |next "killsm" |only if not completedq(30257)
	step
	label "farmsm"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 65 Striped Melon##74848 |next eternal_blossom_bag
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Striped Melon Seeds##89329 |only if completedq(30257) and not completedq(31936)
		.buy 8 Striped Melon Seeds##89329 |only if completedq(31936) and not completedq(31937)
		.buy 12 Striped Melon Seeds##89329 |only if completedq(31937)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the Striped Melon Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more Striped Melons. Note that the mobs have a very low drop rate. |confirm |next "killsm"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmsm"
	step
	label "killsm"
		goto Krasarang Wilds 46.0,86.6
		.from Unga Fish-Getter##60299+, Unga Villager##60358+
		.collect 65 Striped Melon##74848 |next eternal_blossom_bag
		.' Click here if you wish to go back to your farm. |confirm |next "farmsm"
	step
	label	eternal_blossom_bag
		'Moving to next step |next |only if default
		'Redirecting to Banquet of the grill |next "banquet_grill" |only if step:Find("+create_eternal_blossom"):IsComplete()
	step
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Jade Lungfish##87721 |n
		.' You need _{_G.ceil(_G.max(0, ((13-itemcount(74856))/5)-itemcount(87721)))} Sacks of Lungfish_
		.' Open the Sack to collect the ingredients |use Sack of Jade Lungfish##87721
		.collect 13 Jade Lungfish##74856
		.buy Sack of Striped Melons##87714 |n
		.' You need _{_G.ceil(_G.max(0, ((60-itemcount(74848))/25)-itemcount(87714)))} Sacks of Melons_
		.' Open the Sack to collect the ingredients |use Sack of Striped Melons##87714
		.collect 65 Striped Melon##74848
	step
	label	create_eternal_blossom
		#include cooking_fire
		.create Eternal Blossom Fish##104299,Cooking,13 total |n
		.skill Way of the Grill,575 |only if skill('Way of the Grill')>=575
		.' Achieve Way of the Grill level 575 |confirm |only if skill('Way of the Grill')<=574
	step
	label	banquet_grill
		'Skipping 1st part of farming |next "+end_way_of_grill" |only if step:Find("+create_banquet_grill"):IsComplete()
		'Proceeding to farm |next |only if default
	step
		goto Valley of the Four Winds 53.4,51.6
		.talk Kol Ironpaw##58712
		.learn Banquet of the Grill##125141
	step
		#include "auctioneer"
		.buy 50 Redbelly Mandarin##74860
		.buy 50 Raw Crab Meat##74838
		.buy 250 White Turnip##74850
		.buy 5 100 Year Soy Sauce##74853
		' Or
		.' Click here to use Cooking Tokens to purchase this ingredient |confirm |next token_start_grill
		' Or
		.' Click here to farm the ingredient yourself |confirm |next farm_banquet_grill_1
		|next create_banquet_grill
	step
		'Skipping 1st part of farming |next "+farm_banquet_grill_2" |only if step:Find("+farm_banquet_grill_1"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	farm_banquet_grill_1
		goto Townlong Steppes/0 35.2,74.6
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. |cast Fishing##131474
		.collect 50 Redbelly Mandarin##74860
	step
		'Skipping 2nd part of farming |next "+farm_banquet_grill_3" |only if step:Find("+farm_banquet_grill_2"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	farm_banquet_grill_2
		goto Krasarang Wilds 55.3,44.2
		.from Flesh-Eating Sandsnapper##287+, Viseclaw Fisher##58880+
		.collect 50 Raw Crab Meat##74838
	step
	label	farm_banquet_grill_3
		'Routing to proper section |next "farmwt" |only if completedq(30257)
		'Routing to proper section |next "killwt" |only if not completedq(30257)
	step
	label "farmwt"
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		.collect 250 White Turnip##74850 |next "farm_banquet_grill_4"
		|confirm
	step
		goto Valley of the Four Winds/0 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 White Turnip Seeds##80595 |only if completedq(30257) and not completedq(31936)
		.buy 8 White Turnip Seeds##80595 |only if completedq(31936) and not completedq(31937)
		.buy 12 White Turnip Seeds##80595 |only if completedq(31937) and not completedq(32682)
		.buy 16 White Turnip Seeds##80595 |only if completedq(32682)
		|only if completedq(30257)
	step
		goto Valley of the Four Winds 51.9,48.3
		'Plant the White Turnip Seeds in your garden. You will have to wait until the next say to harvest them.
		.' Click here if you wish to kill mobs for more White Turnips. Note that the mobs have a very low drop rate. |confirm |next "killwt"
		.' Click here to be taken to the beginning of the guide. |confirm |next "farmwt"
	step
	label "killwt"
		goto Townlong Steppes 73.6,72.4
		.from Osul Mist-Shaman##60697+, Spiteful Spirit##63840+
		.collect 250 White Turnip##74850 |next "farm_banquet_grill_4"
		.' Click here to go back to your farm. |confirm |next "farmwt"
	step
	label	farm_banquet_grill_4
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy 100 Year Old Soy Sauce##74853 |n
		.' You need _{_G.ceil(_G.max(0, ((5-itemcount(74853)))))} 100 Year Old Soy Sauce_
		.collect 5 100 Year Old Soy Sauce##74853
	step
	label	banquet_grill_bag
		goto Valley of the Four Winds 53.5,51.2
		.talk Nam Ironpaw##64395
		.buy Sack of Redbelly Mandarin##87724 |n
		.' You need _{_G.ceil(_G.max(0,  ((50-itemcount(74860))/5)-itemcount(87724)))} Sacks of Mandarin_
		.' Open the Sack to collect the ingredients |use Sack of Redbelly Mandarin##87724
		.collect 50 Redbelly Mandarin##74860
		.buy Sack of White Turnips##87716 |n
		.' You need _{_G.ceil(_G.max(0, ((250-itemcount(74850))/25)-itemcount(87716)))} Sacks of Crab_
		.' Open the Sack to collect the ingredients |use Sack of White Turnips##87716
		.collect 250 White Turnip##74850
		.buy 100 Year Old Soy Sauce##74853 |n
		.' You need _{_G.ceil(_G.max(0, ((5-itemcount(74853)))))} _100 Year Old Soy Sauce_
		.collect 5 100 Year Old Soy Sauce##74853
	step
	label	create_banquet_grill
		#include cooking_fire
		.create Banquet of the Grill##125141,Cooking,5 total |n
		.skill Way of the Grill,600 |only if skill('Way of the Grill')==600
		.' Achieve Way of the Grill level 600 |confirm |only if skill('Way of the Grill')<=599
	step
	label	end_way_of_grill
		'Congratulations, you have maxed out the _Way of the Grill_ mastery for Cooking!
		.' Click here to return to the Cooking Mastery List |confirm |next cooking_mastery_start
]])


ZygorGuidesViewer:RegisterInclude("Cooking_520-600",[[
	#include "Cooking_PreMasteries"
	step
	label	cooking_start
		'Your Cooking Skill should now be at least 535. Actually, it is _{skill("Cooking")}_.
		.' With cooking you now have a choice to choose a _Cooking Mastery_.
		.' Different Masteries specialize in foods providing different buffs.
		.' This allows you to _Cook foods based on what your character needs or wants._
		.'_
		'Before you continue, _open your cooking window_ so the guide can determine what level your cooking mastery is. |cast Cooking##2550
		|confirm always

	step
	title Cooking Mastery
	label	cooking_mastery_start
		'Here is where you will start your Mastery Cooking:
		.' Remember to open your Cooking Window |cast Cooking##2550
		.' Click here for Way of the Oven - Stamina Food |confirm |next Cooking_Oven |only if skill('Way of the Oven')<600
		.' You have maxed out Way of the Oven |only if skill('Way of the Oven')==600
		.' Click here for Way of the Brew - Mana drinks and Random Food buffs |confirm |next Cooking_Brew |only if skill('Way of the Brew')<600
		.' You have maxed out Way of the Brew |only if skill('Way of the Brew')==600
		.' Click here for Way of the Wok - Agility Food |confirm |next Cooking_Wok |only if skill('Way of the Wok')<600
		.' You have maxed out Way of the Wok |only if skill('Way of the Wok')==600
		.' Click here for Way of the Steamer - Spirit Food |confirm |next Cooking_Steamer |only if skill('Way of the Steamer')<600
		.' You have maxed out Way of the Steamer |only if skill('Way of the Steamer')==600
		.' Click here for Way of the Pot - Intellect Food |confirm |next Cooking_Pot |only if skill('Way of the Pot')<600
		.' You have maxed out Way of the Pot |only if skill('Way of the Pot')==600
		.' Click here for Way of the Grill - Strength Food |confirm |next Cooking_Grill |only if skill('Way of the Grill')<600
		.' You have maxed out Way of the Grill |only if skill('Way of the Grill')==600
		|next mastery_end

//Way of the Oven
		#include Cooking_Oven

//Way of the Brew
		#include Cooking_Brew

//Way of the Wok
		#include Cooking_Wok

//Way of the Steamer
		#include Cooking_Steamer

//Way of the Grill
		#include Cooking_Grill

//Way of the Pot
		#include Cooking_Pot

	step
	label	mastery_end
		goto 53.6,51.2
		.talk Sungshin Ironpaw##64231
		..accept To Be a Master##31521 |tip This will only be available when you have maxed out your cooking.
	step
		goto 53.6,51.2
		.talk Sungshin Ironpaw##64231
		..turnin To Be a Master##31521		
]])





ZygorGuidesViewer:RegisterInclude("Alchemy_500-600",[[
// ----------
// 500-600
// ----------
// TRAIN: Zen Master Alchemy
		step
		title + Alchemy 500-600
		label "alch_500-600"
			#include "trainer_Alchemy"
			.' Learn the Zen Master Alchemist skill |skillmax Alchemy,600 |tip You must be at least level 85.
			.learn Draught of War##93935
		step
			#include "auctioneer"
			.buy 175 Green Tea Leaf##72234
			.buy 75 Snow Lilies##79010
			.buy 75 Fool's Cap##79011
			#include go_farm,skill="Herbalism",req="500",goto="alch_500-600_farm"
			|next "alch_500-600_skill"
//GATHER: 150 Green Tea Leaves, 75 Snow Lilies, 75 Fool's Caps
		step
		label "alch_500-600_farm"
			title + Alchemy 500-600 (farming)
			#include "trainer_Herbalism"
			.skillmax Herbalism,600
		step
		label "travel"
			'Skipping travel |next "+farm" |only if itemcount("Goldclover")>=30 and itemcount("Lichbloom")>=70 and itemcount("Frost Lotus")>=10
			'Proceeding to travel |next |only if default
		step
		label "farm"
			'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
			'Proceeding to farm |next |only if default
		step
		label "farming"
			map Valley of the Four Winds
			path	81.4,21.5	76.4,29.2	71.1,29.5
			path	69.0,31.0	70.8,34.4	70.6,41.8
			path	65.1,60.1	57.6,65.6	50.8,58.6
			path	47.4,64.9	46.9,61.3	42.5,54.3
			path	33.6,62.1	28.1,72.7	25.7,78.4
			path	24.4,56.0	21.9,53.9	12.8,44.7
			path	14.3,41.2	14.8,35.8	19.6,34.4
			#include "follow_path_herbs"
			.collect 150 Green Tea Leaf##72234
			.' Keep any _Snow Lily_ or _Fool's Cap_ you find.
			#include "max_skill_warning",skill="Herbalism",goto="alch_500-600_farm"
		step
		label "farm2"
			'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
			'Proceeding to farm |next |only if default
		step
		label "farming"
			map Dread Wastes
			path	40.4,56.5	43.9,59.5	43.1,64.4
			path	40.5,69.7	37.4,69.2	33.0,66.4
			path	33.4,61.6	30.0,56.5	35.5,55.1
			#include follow_path_herbs
			.collect 75 Fool's Cap##79011
			#include "max_skill_warning",skill="Herbalism",goto="alch_500-600_farm"
		step
		label "farm3"
			'Skipping 3rd part of farming |next "alch_500-600_skill" |only if step:Find("+farming"):IsComplete()
			'Proceeding to farm |next |only if default
		step
		label "farming"
			map Kun-Lai Summit
			path	39.4,77.3	38.0,75.5	40.1,71.8
			path	43.7,64.5	42.9,60.8	41.1,59.3
			path	33.9,54.9	36.0,75.5
			#include follow_path_herbs
			.collect 75 Snow Lily##79010
			#include "max_skill_warning",skill="Herbalism",goto="alch_500-600_farm"
// CREATE: 25 Master Healing Potions, 25 Mantid Elixir, 50 Master Mana Potions
		step
		label "alch_500-600_skill"
		title + Alchemy 500-600
			#include "vendor_Alchemy"
			.buy 150 Crystal Vial##3371
		step
			#include "trainer_Alchemy"
			.learn Master Healing Potion##114752
		step
			.create 25 Master Healing Potion##114752,Alchemy,525
			.' While you create these, you will discover random Pandaria Recipes. Keep making potions until you discover _Mantid Elixir_ or _Master Mana Potion_.
			.learn Mantid Elixir##114755 |or |next "mantid"
			.learn Master Mana Potion##114775 |or |next "mana2"
		step
		label "mantid"
			.create 25 Mantid Elixir##114755,Alchemy,565
			.' While making these you should discover the recipe for one of the potions listed below. If you do not discover it right away, keep making these until you do.
			.learn Virmen's Bite##114765 |next "virmen"
			.learn Elixir of Perfection##114762 |next "perfect"
			.learn Elixir of the Rapids##114759 |next "rapids"
			.learn Master Mana Potion##114775 |next "mana"
		step
		label "virmen"
			.create 10 Virmen's Bite##114765,Alchemy,575
			.' While you create these, you will discover random Pandaria Recipes. Keep making potions until you discover _Master Mana Potion_.
			.learn Master Mana Potion##114775 |next "mana"
		step
		label "perfect"
			.create 10 Elixir of Perfection##114762,Alchemy,575
			.' While you create these, you will discover random Pandaria Recipes. Keep making potions until you discover _Master Mana Potion_.
			.learn Master Mana Potion##114775 |next "mana"
		step
		label "rapids"
			.create 10 Elixir of the Rapids##114759,Alchemy,575
			.' While you create these, you will discover random Pandaria Recipes. Keep making potions until you discover _Master Mana Potion_.
			.learn Master Mana Potion##114775 |next "mana"
		step
		label "mana"
			.create 25 Master Mana Potion##114775,Alchemy,600
			|next "alch_600"
		step
		label "mana2"
			.create 75 Master Mana Potion##114775,Alchemy,600
		step
		label "alch_600"
			' Congratulations, you are now a Zen Master Alchemist!
]])

ZygorGuidesViewer:RegisterInclude("Blacksmithing_500-600",[[
// ----------
// 500 - 600
// ----------
	step
	title + Blacksmithing 500-600
	label "bla_500-600"
		#include "trainer_Blacksmithing"
		.skillmax Blacksmithing,600 
	step
		#include "auctioneer"
		.buy 200 Ghost Iron Bar##72096
		#include go_farm,skill="Mining",req="500",goto="bla_500-600_farm"
		next "bla_500-600_skill"
	step
	label "bla_500-600_farm"
		#include "trainer_Mining"
		.skillmax Mining,600
		.learn Smelt Ghost Iron##102165
		'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Mining")<425 and skillmax("Mining")<525
	step
	label	"farming"
		map Krasarang Wilds
		path	70.3,9.7	66.1,18.5	64.5,21.5
		path	61.6,21.9	52.0,30.2	40.2,27.5	
		path	38.0,28.1	33.4,32.1	33.0,28.9
		path	28.2,37.9	18.4,33.3	14.8,41.8	
		path	15.8,47.6	13.1,52.8	9.8,54.9	
		path	13.6,64.2	32.3,80.1	35.6,69.0
		path	39.5,77.9	41.7,89.1	46.3,94.4
		path	48.3,92.3	50.0,90.5	45.6,68.2
		path	44.5,65.3	48.3,45.4	55.9,34.3
		path	58.6,36.7	65.1,35.6	69.2,28.7
		path	74.8,24.3	75.5,35.0	77.7,34.9	
		path	79.8,17.9	82.3,17.8	85.3,21.4				
		path	86.8,26.6	88.2,23.8	85.0,9.9				
		#include "follow_path_mine"
		.collect 400 Ghost Iron Ore##72092
		#include "max_skill_warning",skill="Mining",goto="bla_500-600_farm"
	step
		#include "trainer_Mining"
		.learn Smelt Ghost Iron##102165
	step
		#include "maincity_anvil"
		.create Smelt Ghost Iron##102165,Mining,200 total
		.collect 200 Ghost Iron Bar##72096
	step
	label "bla_500-600_skill"
		#include "trainer_Blacksmithing"
		.learn Ghost-Forged Bracers##122581
	step
		#include "maincity_anvil"
		.create Ghost-Forged Bracers##122581,Blacksmithing,525
	step
		#include "trainer_Blacksmithing"
		.learn Ghostly Skeleton Key##122581
	step
		#include "maincity_anvil"
		.create Ghostly Skeleton Key##122633,Blacksmithing,530
	step
		#include "trainer_Blacksmithing"
		.learn Ghost-Forged Boots##122582
	step
		#include "maincity_anvil"
		.create Ghost-Forged Boots##122582,Blacksmithing,545
	step
		#include "trainer_Blacksmithing"
		.learn Spiritguard Shield##122636
	step
		#include "maincity_anvil"
		.create Spiritguard Shield##122636,Blacksmithing,555
	step
		#include "trainer_Blacksmithing"
		.learn Ghost-Forged Helm##122576
	step
		#include "maincity_anvil"
		.create Ghost-Forged Helm##122576,Blacksmithing,565
	step
		#include "trainer_Blacksmithing"
		.learn Ghost Shard##122641
	step
		'Kill any creature in Pandaria to collect Motes of Harmony
		.collect 50 Mote of Harmony##89112 |n
		.' Combine 10 Motes of Harmony into a Spirit of Harmony |use Mote of Harmony##89112
		..collect 5 Spirit of Harmony##76061
	step
		#include "maincity_anvil"
		.create Ghost Shard##122641,Blacksmithing,575
	step
		goto Vale of Eternal Blossoms/3 72.6,49.5
		.talk Cullen Hammerbrow##64085
		.buy 1 Plans: Contender's Revenant Bracers##84160 |n
		..learn Contender's Revenant Bracers##122621 |use Plans: Contender's Revenant Bracers##84160
		|only Alliance
	step
		goto Shrine of Two Moons 27.0,47.6
		.talk Jorunga Stonehoof##64058
		.buy 1 Plans: Contender's Revenant Bracers##84160 |n
		..learn Contender's Revenant Bracers##122621 |use Plans: Contender's Revenant Bracers##84160
		|only Horde
	step
		#include "maincity_anvil"
		.create Contender's Revenant Bracers##122621,Blacksmithing,600
	step
	title + Blacksmithing 600
	label "bla_600"
		'Congratulations, you are now a Zen Master Blacksmith!
]])

ZygorGuidesViewer:RegisterInclude("Enchanting_500-600",[[
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master Enchanter
	step
	title +Enchanting 500-600
	label "ench_500-600"
		#include "trainer_Enchanting"
		.skillmax Enchanting,600
		.learn Enchant Bracer - Mastery##104338
		.learn Mysterious Essence##116497
	step
		#include "auctioneer"
		.buy 92 Spirit Dust##74249
		.buy 36 Mysterious Essence##74250
		#include "go_disenchant",skill="Enchanting",req="1",goto="ench_525-600_farm"
		next "ench_500-600_skill" 
// DISENCHANT: 56 Spirit Dust, 41 Mysterious Essence
	step
	label "ench_500-600_farm"
		goto Isle of Thunder 41.7,54.4
		.from Animated Warrior##67473+
		'Disenchant any uncommon quality (green) armor and weapons with an item level of 372-414.|cast Disenchant##13262
		.collect 92 Spirit Dust##74249
		.collect 36 Mysterious Essence##74250
		next "ench_500-600_skill" 
	step
	label "ench_500-600_skill"
		.create 9 Enchant Bracer - Mastery##104338,Enchanting,527
	step
		#include "trainer_Enchanting"
		.skillmax Enchanting,600
		.learn Enchant Boots - Greater Precision##104408
	step
		.create 12 Enchant Boots - Greater Precision##104408,Enchanting,551
	step
		#include "trainer_Enchanting"
		.learn Enchant Boots - Greater Haste##104407
		.learn Mysterious Diffusion##118237
		.learn Enchant Ring - Greater Stamina##103463
	step
		.create 2 Enchant Ring - Greater Stamina##103463,Enchanting,557
	step
		.create 9 Enchant Boots - Greater Haste##104407,Enchanting,575
	step
		#include "trainer_Enchanting"
		.learn Enchant Chest - Glorious Stats##104395
	step
		.create 5 Enchant Chest - Glorious Stats##104395,Enchanting,600
	step
	label "ench_600"
		'Congratulations, you are now a Zen Master Enchanter!
]])

ZygorGuidesViewer:RegisterInclude("Engineering_500-600",[[
// ----------
// 500 - 600
// ----------
// TRAIN: Zen Master Engineer
	step
	title +Engineering 500-600
	label  "eng_500-600"
		#include "trainer_Engineering"
		.skillmax Engineering,600 |tip You must be at least level 80.
		.learn Ghost Iron Bolts##127113
		.learn High-Explosive Gunpowder##127114
	step
		.' You don't need to save anything from the Illustrious Grand Master Engineering section to use in the Zen Master portion.
		..' Feel free to sell off anything you might have created and you may also sell off any left over materials from this section.
		|confirm
	step
		#include "auctioneer"
		.buy 383 Ghost Iron Bar##72096
		.buy 74 Windwool Cloth##72988
		#include go_farm,skill="Mining",req="500",goto="eng_500-600_farm"
		next "eng_500-600_skill"
 	step
	label  "eng_500-600_farm"
		#include "trainer_Mining"
		.skillmax Mining,600
		.learn Smelt Ghost Iron##102165
	step
	label	"farming"
		map Valley of the Four Winds
		path	47.4,45.7	47.4,50.8	42.8,54.2
		path	39.2,52.9	34.9,54.1	33.3,58.6
		path	29.4,58.6	27.3,51.5	30.0,44.9
		path	26.9,35.1	28.8,30.3	32.4,28.3
		path	39.4,34.6	35.4,40.2	37.1,44.8
		path	42.7,42.1		46.0,25.1
		path	52.2,25.3	53.8,26.8	57.3,27.6
		path	59.3,32.5	63.7,29.9	63.9,34.5
		path	59.8,42.1	52.3,43.6
		#include "follow_path_mine"
		.collect 766 Ghost Iron Ore##72092
		#include "max_skill_warning",skill="Mining",goto="eng_500-600_farm"
	step
	label "eng_500-600_skill"
		goto Kun-Lai Summit/8 59.7,75.0
		.from Suspicious Snow Pile##59967+
		.collect 74 Windwool Cloth##72988
		.collect 20 Mote of Harmony##89112 |n |use Mote of Harmony##89112 |tip Turn 10 Mote of Harmony into a Spirit of Harmony
		.collect 2 Spirit of Harmony##76061
	step
		#include "maincity_anvil"
		.create 383 Ghost Iron Bar##102165,Mining,383 total
	step	
		#include "maincity_anvil"
		.create Ghost Iron Bolts##127113,Engineering,94 total
		.collect 188 Ghost Iron Bolts##77467
	step
		.create High-Explosive Gunpowder##127114,Engineering,101 total
		.collect 202 High-Explosive Gunpowder##77468
		.skill Engineering,550
	step
		#include "trainer_Engineering"
		.learn Mist-Piercing Goggles##127130
		.learn Thermal Anvil##127131
		.learn Tinker's Kit##131563
		.learn Ghost Iron Dragonling##127134
	step
		#include "maincity_anvil"
		.create Ghost Iron Dragonling##127134,Engineering,575
	step
		#include "maincity_anvil"
		.create Tinker's Kit##131563,Engineering,580
	step
		#include "maincity_anvil"
		.create Thermal Anvil##127131,Engineering,595
	step
		#include "maincity_anvil"
		.create Mist-Piercing Goggles##127130,Engineering,600
	step
	title +Engineering 600
	label "eng_600"
		'Congratulations, you are now a Zen Master Engineer!
]])

ZygorGuidesViewer:RegisterInclude("FirstAid_525-600",[[
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master First Aid
	step
	title + First Aid 525-600
	label "aid_525-600"
		#include "trainer_FirstAid"
		.skillmax First Aid,600 |tip You must be at least level 85.
		.learn Windwool Bandage##102697
	step
		#include "auctioneer"
		.buy 130 Windwool Cloth##72988
		#include go_farm,skill="First Aid",req="525",goto="aid_525-600_farm"
		|next "aid_525-600_skill"
// GATHER: 280 Embersilk Cloth
	step
	label "aid_525-600_farm"
		goto Valley of the Four Winds 43.9,38.6
		.from Springtail Leaper##57415+, Springtail Gnasher##57413+
		.collect 130 Windwool Cloth##72988
// CREATE: 25 Windwool Bandage, 50 Heavy Windwool Bandage
	step
	label "aid_525-600_skill"
		.create Windwool Bandage##102697,First Aid,550
	step
		#include "trainer_FirstAid"
		.learn Heavy Windwool Bandage##102698
	step
		.create Heavy Embersilk Bandage##102698,First Aid,600
	step
	label "aid_600"
		'Congratulations, you're now a Zen Master in First Aid!
]])
ZygorGuidesViewer:RegisterInclude("Herbalism_525-600",[[
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master
	step
	label "route"
		'Redirecting to Herbalism 525-545 |next "herb_525-545" |only if skill("Herbalism")>=525 and skill("Herbalism")<545 and ZGV.guidesets['ProfessionsHMoP'] or ZGV.guidesets['ProfessionsAMoP']
		'Redirecting to Herbalism 545-590 |next "herb_545-590" |only if skill("Herbalism")>=545 and skill("Herbalism")<590 and ZGV.guidesets['ProfessionsHMoP'] or ZGV.guidesets['ProfessionsAMoP']
		'Redirecting to Herbalism 590-600 |next "herb_590-600" |only if skill("Herbalism")>=590 and skill("Herbalism")<600 and ZGV.guidesets['ProfessionsHMoP'] or ZGV.guidesets['ProfessionsAMoP']
		'Redirecting to Herbalism finale |next "herb_600" |only if default
	step
	title + Herbalism 525-545
	label "herb_525-545"
		#include "trainer_Herbalism"
		.skillmax Herbalism,600
	step
		.' Go to Valley of the Four Winds |goto Valley of the Four Winds |c
	step
	label "farming"
		map Valley of the Four Winds
		path	81.4,21.5	76.4,29.2	71.1,29.5
		path	69.0,31.0	70.8,34.4	70.6,41.8
		path	65.1,60.1	57.6,65.6	50.8,58.6
		path	47.4,64.9	46.9,61.3	42.5,54.3
		path	33.6,62.1	28.1,72.7	25.7,78.4
		path	24.4,56.0	21.9,53.9	12.8,44.7
		path	14.3,41.2	14.8,35.8	19.6,34.4
		#include "follow_path_herbs"
		.collect Green Tea Leaf##72234 |n
		skill Herbalism,545
	step
	title + Herbalism 545-590
	label "herb_545-590"
		map Valley of the Four Winds
		path	86.4,19.2	88.4,25.7	88.4,31.4
		path	85.3,32.0	85.9,35.5	71.1,54.9
		path	62.4,67.6
		path	59.1,37.3	51.5,32.4	35.3,42.4
		path	30.9,51.4	26.1,45.2	37.9,31.8
		path	41.2,36.0	47.0,28.8	51.9,29.1
		path	57.2,27.3	55.7,33.0
		path	62.9,37.3	64.7,31.4	59.0,28.1
		#include "follow_path_herbs"
		.collect Silkweed##72235 |n
		skill Herbalism,590
	step
	title + Herbalism 590-600
	label "herb_590-600"
		map Kun-Lai Summit
		path	53.9,58.1	50.9,51.6	49.9,52.4
		path	50.1,57.1	49.6,63.7	48.1,64.3
		path	45.4,65.8	47.6,61.0	47.8,55.6
		#include "follow_path_herbs"
		.collect Snow Lily##79010 |n
		skill Herbalism,600
	step
	label "herb_600"
		'Congratulations, you are now a Zen Master Herbalist!
]])


ZygorGuidesViewer:RegisterInclude("Pandarian_Mining_1-600",[[
	step
	label "route"
		'Redirecting to Mining 1-50 |next "min_1-50" |only if skill("Mining")<50
		'Redirecting to Mining 50-125 |next "min_50-125" |only if skill("Mining")>=50 and skill("Mining")<125
		'Redirecting to Mining 125-200 |next "min_125-200" |only if skill("Mining")>=125 and skill("Mining")<200
		'Redirecting to Mining 200-275 |next "min_200-275" |only if skill("Mining")>=200 and skill("Mining")<275
		'Redirecting to Mining 275-350 |next "min_275-350" |only if skill("Mining")>=275 and skill("Mining")<350
		'Redirecting to Mining 350-425 |next "min_350-425" |only if skill("Mining")>=350 and skill("Mining")<425
		'Redirecting to Mining 425-500 |next "min_425-500" |only if skill("Mining")>=425 and skill("Mining")<500
		'Redirecting to Mining 500-600 |next "min_500-600" |only if skill("Mining")>=500 and skill("Mining")<600
		'Redirecting to Mining finale |next "min_600" |only if default

// ----------
// 1 - 50
// ----------
	step
	title + Mining 1-50
	label "min_1-50"
		#include "trainer_Mining_mop"
		.skillmax Mining,75 |tip You must be at least level 5.
	step
		#include "home_Herb_Mine_mop"
	step
	label	"farming"
		map The Jade Forest
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,50
// ----------
// 50 - 125
// ----------
	step
	title + Mining 50-125
	label "min_50-125"
		#include "trainer_Mining_mop"
		.skillmax Mining,150
	step
	label	"farming"
		map The Jade Forest
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,125
// ----------
// 125 - 200
// ----------
	step
	title + Mining 125-200
	label "min_125-200"
		#include "trainer_Mining_mop"
		.skillmax Mining,225
	step
	label "farm"
		'Skipping next part of farming |next "farm2" |only if step:Find("+farming"):IsComplete()
		'Proceeding to farm |next |only if default
	step
	label	"farming"
		map The Jade Forest
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,200
// ----------
// 200 - 275
// ----------
	step
	title + Mining 200-275
	label "min_200-275"
		#include "trainer_Mining_mop"
		.skillmax Mining,300
	step
	label	"farming"
		map The Jade Forest
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,275
// ----------
// 275 - 350
// ----------
	step
	title + Mining 275-350
	label "min_275-350"
		#include "trainer_Mining_mop"
		.skillmax Mining,375
	step
	label	"farming"
		map The Jade Forest
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,350
// ----------
// 350 - 425
// ----------
	step
	title + Mining 350-425
	label "min_350-425"
		#include "trainer_Mining_mop"
		.skillmax Mining,450
	step
	label	"farming"
		map The Jade Forest
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,425
// ----------
// 425 - 500
// ----------
	step
	title + Mining 425-500
	label "min_425-500"
		#include "trainer_Mining_mop"
		.skillmax Mining,525
	step
	label	"farming"
		map The Jade Forest
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,500
// ----------
// 500 - 600
// ----------
	step
	title + Mining (500-600)
	label	"min_500-600"
		#include "trainer_Mining_mop"
		.skillmax Mining,600
		.learn Smelt Ghost Iron##102165
	step
	label	"farming"
		map The Jade Forest
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,600
	step
	label "min_600"
		'Congratulations, you are now a level 600 Miner!

]])

ZygorGuidesViewer:RegisterInclude("Pandarian_Herbalism_1-600",[[
	step
	label "route"
		'Redirecting to Herbalism 1-70 |next "herb_1-70" |only if skill("Herbalism")<70
		'Redirecting to Herbalism 70-130 |next "herb_70-130" |only if skill("Herbalism")>=70 and skill("Herbalism")<130
		'Redirecting to Herbalism 130-225 |next "herb_130-225" |only if skill("Herbalism")>=130 and skill("Herbalism")<225
		'Redirecting to Herbalism 200-285 |next "herb_200-285" |only if skill("Herbalism")>=225 and skill("Herbalism")<285
		'Redirecting to Herbalism 285-350 |next "herb_285-375" |only if skill("Herbalism")>=285 and skill("Herbalism")<350
		'Redirecting to Herbalism 350-425 |next "herb_350-425" |only if skill("Herbalism")>=350 and skill("Herbalism")<425
		'Redirecting to Herbalism 425-525 |next "herb_425-525" |only if skill("Herbalism")>=425 and skill("Herbalism")<525
		'Redirecting to Herbalism 525-600 |next "herb_525-600" |only if skill("Herbalism")>=525 and skill("Herbalism")<600
		'Redirecting to Herbalism finale |next "herb_600" |only if default
// ----------
// 1 - 70
// ----------
// TRAIN: Apprentice Herbalism
	step
	title + Herbalism (1-70)
	label	"herb_1-70"
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,75
	step
		#include "home_Herb_Mine_mop"
// GATHER: (Herbalism 70)
	step
	label	"farming"
		map The Jade Forest
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,70
// ----------
// 70 - 150
// ----------
// TRAIN: Journeyman Herbalism
	step
	title + Herbalism (70-150)
	label "herb_70-150"
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,150
// GATHER: (Herbalism 150)
	step
	label	"farming"
		map The Jade Forest
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,150
// ----------
// 150 - 200
// ----------
// TRAIN: Expert Herbalism
	step
	title + Herbalism (150-200)
	label	"herb_150-200"
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,225
// GATHER: (Herbalism 200)
	step
	label	"farming"
		map The Jade Forest
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,200
// ----------
// 200 - 285
// ----------
// TRAIN: Artisan Herbalism
	step
	title + Herbalism (200-285)
	label	"herb_200-285"
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,300
// GATHER: (Herbalism 285)
	step
	label	"farming"
		map The Jade Forest
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,285
// ----------
// 285 - 375
// ----------
// TRAIN: Master Herbalism
	step
	title + Herbalism (285-375)
	label	"herb_285-375"
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,375
// GATHER: (Herbalism 375)
	step
	label	"farming"
		map The Jade Forest
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,375
// ----------
// 375 - 425
// ----------
// TRAIN: Grand Master Herbalism
	step
	title + Herbalism (350-425)
	label	"herb_375_425"
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,450
// GATHER: (Herbalism 400), Sholazar Basin (Herbalism 425)
	step
	label	"farming"
		map The Jade Forest
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,425
// ----------
// 425 - 525
// ----------
// TRAIN: Illustrious Grand Master
	step
	title + Herbalism 425-525
	label "herb_425-525"
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,525
// GATHER: (Herbalism 525)
	step
	label	"farming"
		map The Jade Forest
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,525
// ----------
// 500 - 600
// ----------
// TRAIN: Illustrious Grand Master
	step
	title + Herbalism 500-600
	label "herb_500-600"
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,600
// GATHER: (Herbalism 475), Deepholm (Herbalism 500), Uldum (Herbalism 525)
	step
	label	"farming"
		map The Jade Forest
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,600
	step
	label "herb_600"
		'Congratulations, you are now a level 600 Herbalist!
]])
ZygorGuidesViewer:RegisterInclude("Inscription_500-600",[[
// ----------
// 500-600
// ----------
// TRAIN: Zen Master Inscription
	step
	title + Inscription 500-600
	label "ins_500-600"
		#include "trainer_Inscription"
		.skillmax Inscription,600 |tip You must be at least level 85.
		.learn Ink of Dreams##111645
	step
		#include "vendor_Inscription"
		.buy 20 Light Parchment##39354
	step
		#include "auctioneer"
		.' You need about 130 Shadow-giving herbs total
		.buy Rain Poppy##72237 |n
		.buy Green Tea leaf##72234 |n
		.buy Silkweed##72235 |n
		.buy Snow Lily##79010 |n
		.buy Fool's Cap##79011 |n
		.' You'll need about {_G.max(0 , (250-itemcount(72237,72234,72235,79010,79011)))} more herbs in stacks of 5.
		.' Mill the 250 herbs you purchased into Shadow Pigment |cast Milling##51005
		.buy 130 Shadow Pigment##79251
		#include go_farm,skill="Herbalism",req="1",goto="ins_500-600_farm"
		|next "ins_500-600_skill"
//GATHER: 130 Shadow Pigment
	step
	label "ins_500-600_farm"
		#include "trainer_Herbalism"
		.skillmax Herbalism,525
		'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Herbalism")<425 and skillmax("Herbalism")<525
	step
		map Valley of the Four Winds
		path 81.4,21.5	76.4,29.2	68.2,33.3
		path 70.6,41.8	65.1,60.1	57.6,65.6
		path 50.8,58.6	48.0,65.9	46.9,61.3
		path 42.5,58.3	33.6,62.1	28.1,72.7
		path 25.7,78.4	18.5,51.0	15.4,53.9
		path 12.8,44.7	14.3,41.2	14.8,35.8
		path 19.6,34.4	24.0,42.2	25.0,50.2
		path 30.1,55.7	 35.8,54.8	41.5,48.9
		#include "follow_path_herbs"
		.' You need about 130 Shadow-giving herbs total
		.collect Green Tea leaf##72234 |n
		.collect Silkweed##72235 |n
		.' You'll need about {_G.max(0 , (250-itemcount(72234,72235)))} more herbs in stacks of 5.
		.' Mill the 250 herbs you gathered into Shadow Pigment |cast Milling##51005
		.collect 130 Shadow Pigment##79251
		#include "max_skill_warning",skill="Herbalism",goto="ins_500-600_farm"
//CREATE
	step
	label "ins_500-600_skill"
		.create 65 Ink of Dreams##111645,Inscription,65 total
		skill Inscription,545
	step
		#include "trainer_Inscription"
		.learn Scroll of Wisdom##112996
	step
		.create Scroll of Wisdom##112996,Inscription,546 |tip This ability will allow you to learn a new glyph. It also has a 20 hour cooldown.
	step
		'Use Inscription skill to create your Newly Discovered glyph until your Inscription skill is 597. |tip Each glyph will give you three skill-up points. //x20
		skill Inscription,597
	step
		#include "trainer_Inscription"
		.learn Secret Crane Wing Inscription##127023
	step
		.create 2 Secret Crane Wing Inscription##127023,Inscription,2 total
		skill Inscription,600
	step
	label "ins_600"
		'Congratulations, you are now a Zen Master Inscriptionist!
]])

ZygorGuidesViewer:RegisterInclude("Jewelcrafting_500-600",[[
// ----------
// 500 - 600
// ----------
// TRAIN: Zen Master Jewelcrafting
	step
	label "jc_500-600"
	title +Jewelcrafting 500-600
		#include "trainer_Jewelcrafting"
		.skillmax Jewelcrafting,600 	
	step
		#include "auctioneer"
		.buy Lapis Lazuli##76133 |n
		.buy Sunstone##76134 |n
		.buy Tiger Opal##76130 |n
		.buy Alexandrite##76137 |n
		.buy Pandarian Garnet##76136 |n
		.buy Roguestone##76135 |n
		.' You'll need about {_G.max(0 , (55-itemcount(76133,76134,76130,76137,76136,76135))*1)} more of the gems above. |condition itemcount(76133,76134,76130,76137,76136,76135)>=55 
		.' You will also need 5 additional gems of each kind listed above.
		.buy 13 Sun's Radiance##76142
		#include go_farm,skill="Mining",req="500",goto="jc_500-600_farm"
		|next "jc_500-600_skill"
	step
	label "jc_500-600_farm"
		map Krasarang Wilds
		path	70.3,9.7	66.1,18.5	64.5,21.5
		path	61.6,21.9	52.0,30.2	40.2,27.5	
		path	38.0,28.1	33.4,32.1	33.0,28.9
		path	28.2,37.9	18.4,33.3	14.8,41.8	
		path	15.8,47.6	13.1,52.8	9.8,54.9	
		path	13.6,64.2	32.3,80.1	35.6,69.0
		path	39.5,77.9	41.7,89.1	46.3,94.4
		path	48.3,92.3	50.0,90.5	45.6,68.2
		path	44.5,65.3	48.3,45.4	55.9,34.3
		path	58.6,36.7	65.1,35.6	69.2,28.7
		path	74.8,24.3	75.5,35.0	77.7,34.9	
		path	79.8,17.9	82.3,17.8	85.3,21.4				
		path	86.8,26.6	88.2,23.8	85.0,9.9
		#include "follow_path_mine"
		.collect Lapis Lazuli##76133 |n |cast Prospecting##31252
		.collect Sunstone##76134 |n |cast Prospecting##31252
		.collect Tiger Opal##76130 |n |cast Prospecting##31252
		.collect Alexandrite##76137 |n |cast Prospecting##31252
		.collect Pandarian Garnet##76136 |n |cast Prospecting##31252
		.collect Roguestone##76135 |n |cast Prospecting##31252
		.' You'll need about {_G.max(0 , (55-itemcount(76133,76134,76130,76137,76136,76135))*1)} more of the gems above. |condition itemcount(76133,76134,76130,76137,76136,76135)>=55
		.' You will also need 5 additional gems of each kind listed above.
		.collect 13 Sun's Radiance##76142 |cast Prospecting##31252	
	step
	label "jc_500-600_skill"
		#include "trainer_Jewelcrafting"
		.learn Ornate Band##122661
	step
		.create Ornate Band##122661,Jewelcrafting,512
	step
		#include "trainer_Jewelcrafting"
		.learn Shadowfire Necklace##122662
	step
		.create Shadowfire Necklace##122662,Jewelcrafting,525
	step
		#include "trainer_Jewelcrafting"
		.learn Artful Tiger Opal##107646
		.learn Etched Roguestone##107630
		.learn Lightning Alexandrite##107604
		.learn Rigid Lapis Lazuli##107617
	step
		'Create any of the following:
		.create Artful Tiger Opal##107646,Jewelcrafting,530
		.create Etched Roguestone##107630,Jewelcrafting,530
		.create Lightning Alexandrite##107604,Jewelcrafting,530
		.create Rigid Lapis Lazuli##107617,Jewelcrafting,530
	step
		#include "trainer_Jewelcrafting"
		.learn Delicate Pandarian Garnet##107624
	step
		'Create any of the following:
		.create Artful Tiger Opal##107646,Jewelcrafting,535
		.create Etched Roguestone##107630,Jewelcrafting,535
		.create Lightning Alexandrite##107604,Jewelcrafting,535
		.create Rigid Lapis Lazuli##107617,Jewelcrafting,535
		.create Delicate Pandarian Garnet##107624,Jewelcrafting,535
	step
		#include "trainer_Jewelcrafting"
		.learn Fractured Sunstone##107640
	step
		'Create any of the following:
		.create Artful Tiger Opal##107646,Jewelcrafting,577
		.create Etched Roguestone##107630,Jewelcrafting,577
		.create Lightning Alexandrite##107604,Jewelcrafting,577
		.create Rigid Lapis Lazuli##107617,Jewelcrafting,577
		.create Delicate Pandarian Garnet##107624,Jewelcrafting,577
		.create Fractured Sunstone##107640,Jewelcrafting,577
	step
		#include "trainer_Jewelcrafting"
		.learn Sun's Radiance##131695
	step
		.create Sun's Radiance##131695,Jewelcrafting,580
	step
		'The research you performed in the previous step has given you a new pattern for Yellow Gems. Create that Yellow gem until you are 600 Jewelcrafting
		skill Jewelcrafting,600
	step
	label "jc_600"
		'Congratulations, you are now a Zen Master Jewelcrafter!
]])

ZygorGuidesViewer:RegisterInclude("Skinning_525-600",[[
	step
	label	"skn_525-600"
		#include trainer_Skinning
		.skillmax Skinning,600
	step
		map Townlong Steppes
		path	58.6,52.8	59.2,57.7	56.9,66.3
		path	54.3,66.3	53.5,65.1	51.3,62.3
		path	50.9,56.8	52.6,54.3	54.7,50.4
		.' Kill any beasts you find in the area.
		skill Skinning,600
	step
	label	"skn_600"
		'Congratulations, you are now a Zen Master Skinner!	
]])

ZygorGuidesViewer:RegisterInclude("Mining_525-600",[[
	step
	title + Mining (525-600)
	label	"min_525-600"
		#include "trainer_Mining"
		.skillmax Mining,600
		.learn Smelt Ghost Iron##102165
	step
	label	"farming"
		map Krasarang Wilds
		path	70.3,9.7	66.1,18.5	64.5,21.5
		path	61.6,21.9	52.0,30.2	40.2,27.5
		path	38.0,28.1	33.4,32.1	33.0,28.9
		path	28.2,37.9	18.4,33.3	14.8,41.8
		path	15.8,47.6	13.1,52.8	9.8,54.9
		path	13.6,64.2	32.3,80.1	35.6,69.0
		path	39.5,77.9	41.7,89.1	46.3,94.4
		path	48.3,92.3	50.0,90.5	45.6,68.2
		path	44.5,65.3	48.3,45.4	55.9,34.3
		path	58.6,36.7	65.1,35.6	69.2,28.7
		path	74.8,24.3	75.5,35.0	77.7,34.9
		path	79.8,17.9	82.3,17.8	85.3,21.4
		path	86.8,26.6	88.2,23.8	85.0,9.9
		#include "follow_path_mine"
		skill Mining,600
	step
	label "min_600"
		'Congratulations, you are now a level 600 Miner!
]])

ZygorGuidesViewer:RegisterInclude("MiningSmelting_500-600",[[
	step
		title + Mining w/Smelting (500-600)
	label 	"sm_500-600"
		#include trainer_Mining
		.skillmax Mining,600
		.learn Smelt Ghost Iron##102165
	step
		#include "auctioneer"
		.buy 100 Ghost Iron Ore##72092
	step
	label	"skill"
		#include "maincity_anvil"
		.create Smelt Ghost Iron##102165,Mining,525
	step
	label	"farming"
		map Krasarang Wilds
		path	70.3,9.7	66.1,18.5	64.5,21.5
		path	61.6,21.9	52.0,30.2	40.2,27.5	
		path	38.0,28.1	33.4,32.1	33.0,28.9
		path	28.2,37.9	18.4,33.3	14.8,41.8	
		path	15.8,47.6	13.1,52.8	9.8,54.9	
		path	13.6,64.2	32.3,80.1	35.6,69.0
		path	39.5,77.9	41.7,89.1	46.3,94.4
		path	48.3,92.3	50.0,90.5	45.6,68.2
		path	44.5,65.3	48.3,45.4	55.9,34.3
		path	58.6,36.7	65.1,35.6	69.2,28.7
		path	74.8,24.3	75.5,35.0	77.7,34.9	
		path	79.8,17.9	82.3,17.8	85.3,21.4				
		path	86.8,26.6	88.2,23.8	85.0,9.9				
		#include "follow_path_mine"
		skill Mining,600
	step
	label	"sm_600"
		'Congratulations, you are now a level 600 Miner!		
]])

ZygorGuidesViewer:RegisterInclude("Leatherworking_500-600",[[
// ----------
// 500 - 600
// ----------
// TRAIN:	Zen Master Leatherworking
	step
	title + Leatherworking 500-600
	label	"lw_500-600"
		#include "trainer_Leatherworking"
		.skillmax Leatherworking,600 |tip You must be at least level 85.
		.learn Exotic Leather##124627
// GATHER:	500 Exotic Leather, 65 Sha-Touched Leather
	step
		#include "auctioneer"
		.buy 65 Sha-Touched Leather##72162
		.buy 500 Exotic Leather##72120
		#include go_farm,skill="Skinning",req="510",goto="lw_500-600_farm"
		|next "lw_500-600_skill"
	step
		title + Leatherworking 500-600 (farming)
	label	"lw_500-600_farm"
		#include "trainer_Skinning" 
		.skillmax Skinning,600 |only if skill("Skinning")>=500
		'Your _Skinning_ skill is too low to learn the _Zen Master_ skill. You can proceed with farming, but your skill gains will stop at 525. It's better to skill up first. |only if skill("Skinning")<500
		.' Click here to continue |only if skill("Skinning")<500 |confirm
	step
		map The Jade Forest
		path	30.1,12.6	30.2,11.3	30.8,11.1
		path	31.0,9.7	32.3,10.4	32.0,13.1
		path	31.1,15.9
		.from Sha-Infested Prowler##66668
		.collect 65 Sha-Touched Leather##72162
		#include "max_skill_warning",skill="Skinning",goto="lw_500-600_farm"
	step
		map Dread Wastes
		path	27.2,26.0	28.0,27.6	27.5,30.2
		path	27.0,33.4	27.1,37.2	28.1,42.9
		path	30.9,51.7	28.1,50.1	26.3,47.3
		path	26.1,43.4	25.4,38.4	25.6,34.6
		path	24.3,28.1
		.from Onyx Venomtail##63586+, Dread Scarab##63587+, Ruby Venomtail##63588+
		.collect 500 Exotic Leather##72120
		.collect 10 Mote of Harmony##89112 |n
		.' Right-Click the _Motes of Harmony_ in your bags to create a _Spirit of Harmony_.
		.collect 1 Spirit of Harmony##76061
		#include "max_skill_warning",skill="Skinning",goto="lw_500-600_farm"
// CREATE:	13 Exotic Leather, 9 Sha Armor Kit, 15 Misthide Bracers, 10 Misthide Gloves, 40 Contender's Leather Bracers
	step
	label	"lw_500-600_skill"  
		.create Exotic Leather##124627,Leatherworking,526
	step
		#include "trainer_Leatherworking"
		.learn Sha Armor Kit##124628
	step
		.create Sha Armor Kit##124628,Leatherworking,535
	step
		#include "trainer_Leatherworking"
		.learn Misthide Belt##124578
	step
		.create Misthide Belt##124578,Leatherworking,550
	step
		#include "trainer_Leatherworking"
		.learn Misthide Gloves##124574
	step
		.create Misthide Gloves##124574,Leatherworking,560
	step
		#include "pandaria_leatherworker"
		.buy 1 Pattern: Contender's Leather Bracers##86250
	step
		'Click the pattern in your bags to learn _Contender's Leather Bracers_.
		.learn Contender's Leather Bracers##124608
	step
		.create Contender's Leather Bracers##124608,Leatherworking,600
	step
	label "lw_600"
		'Congratulations, you are now a Zen Master Leatherworker!
]])

ZygorGuidesViewer:RegisterInclude("Tailoring_500-600",[[
	step
	label	"tl_500-600"
		#include "trainer_Tailoring"
		.skillmax Tailoring,600 |tip You must be at least level 80.
		.learn Bolt of Windwool Cloth##125551
	step
		#include "auctioneer"
		.buy 500 Windwool##72988
		.' or
		#include go_farm_level,level="85",goto="tl_500-600_farm"
		|next "tl_500-600_farm2"
	step
	label	"tl_500-600_farm"
		goto Valley of the Four Winds 43.9,38.6
		.from Springtail Leaper##57415+, Springtail Gnasher##57413+
		.collect 500 Windwool Cloth##72988
	step
	label	"tl_500-600_farm2"
	step
		'Kill any creature in Pandaria to collect Motes of Harmony
		.collect 10 Mote of Harmony##89112 |n
		.' Combine 10 Motes of Harmony into a Spirit of Harmony |use Mote of Harmony##89112
		.collect 1 Spirit of Harmony##76061 
	step	
	label	"tl_500-600_skill"
		.create 124 Bolt of Windwool Cloth##125551,Tailoring,124 total |n
		.collect 124 Bolt of Windwool Cloth##82441
		.skill Tailoring,535
	step
		#include "trainer_Tailoring"
		.learn Pearlescent Spellthread##125552
	step
		.create 5 Pearlescent Spellthread##125552,Tailoring,555
	step
		#include "trainer_Tailoring"
		.learn Windwool Hood##125523
	step	
		.create 9 Windwool Hood##125523,Tailoring,580
	step
		goto Vale of Eternal Blossoms/3 64.7,44.2
		.talk Raishen the Needle##64052
		.buy Pattern: Contender's Silk Footwraps##86358 |n
		.learn Contender's Silk Footwraps##125537 |use Pattern: Contender's Silk Footwraps##86358
		|only Alliance
	step
		goto Shrine of Two Moons/1 32.5,54.0
		.talk Esha the Loommaiden##64051
		.buy Pattern: Contender's Silk Footwraps##86358 |n
		.learn Contender's Silk Footwraps##125537 |use Pattern: Contender's Silk Footwraps##86358
		|only Horde
	step
		.create Contender's Silk Footwraps##125537,Tailoring,600
	step
	label "tl_600"
		'Congratulations! You have leveled Tailoring to 600!
]])

ZygorGuidesViewer:RegisterInclude("Mining_Herbalism_525-600",[[
// ----------
// 525 - 600
// ----------
	step
	title + Mining and Herbalism 525-600
	label	"minherb_525-600"
		#include "trainer_Mining_mop"
		.skillmax Mining,600
		.learn Smelt Ghost Iron##102165
	step
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,600
	step
	label	"farming"
		map The Jade Forest
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,600
		skill Herbalism,600
	step
	label "minherb_600"
		'Congratulations, you are now a level 600 Miner and Herbalist!
]])

ZygorGuidesViewer:RegisterInclude("Pandarian_Mining_Herbalism_1-600",[[
	step
	label "route"
		'Redirecting to Mining and Herbalism 1-50 |next "minherb_1-50" |only if skill("Mining")<50 or skill("Herbalism")<50
		'Redirecting to Mining and Herbalism 50-125 |next "minherb_50-125" |only if (skill("Mining")>=50 and skill("Mining")<125) or (skill("Herbalism")>=50 and skill("Herbalism")<125)
		'Redirecting to Mining and Herbalism 125-200 |next "minherb_125-200" |only if (skill("Mining")>=125 and skill("Mining")<200) or (skill("Herbalism")>=125 and skill("Herbalism")<200)
		'Redirecting to Mining and Herbalism 200-275 |next "minherb_200-275" |only if (skill("Mining")>=200 and skill("Mining")<275) or (skill("Herbalism")>=200 and skill("Herbalism")<275)
		'Redirecting to Mining and Herbalism 275-350 |next "minherb_275-350" |only if (skill("Mining")>=275 and skill("Mining")<350) or (skill("Herbalism")>=275 and skill("Herbalism")<350)
		'Redirecting to Mining and Herbalism 350-425 |next "minherb_350-425" |only if (skill("Mining")>=350 and skill("Mining")<425) or (skill("Herbalism")>=350 and skill("Herbalism")<425)
		'Redirecting to Mining and Herbalism 425-500 |next "minherb_425-500" |only if (skill("Mining")>=425 and skill("Mining")<500) or (skill("Herbalism")>=425 and skill("Herbalism")<500)
		'Redirecting to Mining and Herbalism 500-600 |next "minherb_500-600" |only if (skill("Mining")>=500 and skill("Mining")<600) or (skill("Herbalism")>=500 and skill("Herbalism")<600)
		'Redirecting to Mining and Herbalism finale |next "minherb_600" |only if default
// ----------
// 1 - 50
// ----------
	step
	title + Mining and Herbalism 1-50
	label "minherb_1-50"
		#include "trainer_Mining_mop"
		.skillmax Mining,75
	step
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,75
	step
		#include "home_Herb_Mine_mop"
	step
	label	"farming"
		map The Jade Forest
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,50
		skill Herbalism,50
// ----------
// 50 - 125
// ----------
	step
	title + Mining and Herbalism 50-125
	label "minherb_50-125"
		#include "trainer_Mining_mop"
		.skillmax Mining,150
	step
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,150
	step
	label	"farming"
		map The Jade Forest
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,125
		skill Herbalism,125
// ----------
// 125 - 200
// ----------
	step
	title + Mining and Herbalism 125-200
	label "minherb_125-200"
		#include "trainer_Mining_mop"
		.skillmax Mining,225
	step
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,225
	step
	label	"farming"
		map The Jade Forest
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,200
		skill Herbalism,200
// ----------
// 200 - 275
// ----------
	step
	title + Mining and Herbalism 200-275
	label "minherb_200-275"
		#include "trainer_Mining_mop"
		.skillmax Mining,300
	step
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,300
	step
	label	"farming"
		map The Jade Forest
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,275
		skill Herbalism,275
// ----------
// 275 - 350
// ----------
	step
	title + Mining and Herbalism 275-350
	label "minherb_275-350"
		#include "trainer_Mining_mop"
		.skillmax Mining,375
	step
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,375
	step
	label	"farming"
		map The Jade Forest
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,350
		skill Herbalism,350
// ----------
// 350 - 425
// ----------
	step
	title + Mining and Herbalism 350-425
	label "minherb_350-425"
		#include "trainer_Mining_mop"
		.skillmax Mining,450
	step
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,450
	step
	label	"farming"
		map The Jade Forest
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,425
		skill Herbalism,425
// ----------
// 425 - 500
// ----------
	step
	title + Mining and Herbalism 425-500
	label "minherb_425-500"
		#include "trainer_Mining_mop"
		.skillmax Mining,525
	step
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,525
	step
	label	"farming"
		map The Jade Forest
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,500
		skill Herbalism,500
// ----------
// 500 - 600
// ----------
	step
	title + Mining and Herbalism 500-600
	label	"minherb_500-600"
		#include "trainer_Mining_mop"
		.skillmax Mining,600
		.learn Smelt Ghost Iron##102165
	step
		#include "trainer_Herbalism_mop"
		.skillmax Herbalism,600
	step
	label	"farming"
		map The Jade Forest
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,600
		skill Herbalism,600
	step
	label "minherb_600"
		'Congratulations, you are now a level 600 Miner and Herbalist!
]])


ZygorGuidesViewer:RegisterInclude("Gear_Collect_Gathering_Alliance",[[
//ROUTER
	step
	label "menu"
		'Click here to make _Herbalist's Gloves_, which gives you a _+5 bonus to Herbalism_.
		'Click here to make _Ancient Pandaren Mining Pick_, which gives you 
//HERBALIST'S GLOVES (ALLIANCE)
	step
	label "herbgloves"
		#include "auctioneer"
		..buy 1 Herbalist's Gloves##7349 |next "menu"
		.' Click here if you wish to make these yourself. |confirm |next "lw7349" |only if skill("Leatherworking")>=135
	step
	label "lw7349"
		goto Ashenvale 18.2,60.0
		.talk Harlown Darkweave##34601
		..buy 1 Pattern: Herbalist's Gloves##7361 |tip NOTE: This pattern is in limited supply. You may need to wait for it to be available.
		..buy 2 Fine Thread##2321
	step
		'Use the Pattern: Herbalist's Gloves in your bags to learn the new pattern. |use Pattern: Herbalist's Gloves##7361
		.learn Herbalist's Gloves##9146
	step
	label "buylw7349"
		#include "auctioneer"
		..buy 8 Medium Leather##2319
		..buy 4 Kingsblood##3356
		|next "make7349"
		.' Click here if you wish to farm the Medium Leather yourself. |confirm |next "farmmed" |only if skill("Skinning")
		.' Click here if you wish to farm the Kingsblood yourself. |confirm |next "farmking" |only if skill("Herbalism")>=125
	step
	label "farmmed"
		goto Wetlands 67.6,47.2
		.from Ebon Slavehunter##42043+ |tip Skin any dragonkin you kill.
		..collect 8 Medium Leather##2319
		|next "buylw7349"
	step
	label "farmking"
		map Northern Stranglethorn
		path	29.2,25.0	27.5,22.1	25.7,22.0
		path	23.8,25.0	34.2,35.9	41.3,30.1
		path	43.6,43.1	46.3,54.1	53.7,60.8
		path	58.0,67.1	62.9,72.9	62.4,67.1
		path	60.5,56.0	58.9,19.5
		#include "follow_path_herbs"
		..collect 4 Kingsblood##3356
		|next "buylw7349"
	step
	label "make7349"
		.create 1 Herbalist's Gloves##9146,Leatherworking,1 total
		|next "menu"
//ANCIENT PANDAREN MINING PICK
	step
	label "ancientpick"
		goto The Jade Forest 45.5,29.5
		.click Ancient Pandaren Mining Pick##213364
		..collect 1 Ancient Pandaren Mining Pick##85777 |tip This object is a rare spawn, so you may need to wait around for a while.
		|next "menu"
//HERBALIST'S SPADE (ALLIANCE)
	step
	label "herbspade"
		goto Stormwind City 64.6,71.6
		.talk Edna Mullby##1286
		..buy Herbalist's Spade##85663
		|next "menu"
//GNOMISH ARMY KNIFE (ALLIANCE)
	step
	label "armyknife"
		#include "auctioneer"
		..buy 1 Gnomish Army Knife##40772 |next "menu"
		.' Click here if you wish to make this yourself. |confirm |next "engarmy" |only if skill("Engineering")>=435
	step
	label "engarmy"
		#include "trainer_Engineering"
		.learn Gnomish Army Knife##56462
	step
		goto Stormwind City 64.6,71.6
		.talk Edna Mullby##1286
		..buy 1 Skinning Knife##7005
		..buy 1 Mining Pick##2901
		..buy 1 Blacksmith Hammer##5956
	step
		#include "auctioneer"
		..buy 10 Saronite Bar##36913 |next "makearmy"
		.' Click here if you wish to farm these yourself. |confirm |next "farmsaro" |only if skill("Mining")>=400
	step
	label "farmsaro"
		map Sholazar Basin
		path follow strict
		path	77.9,63.8	78.7,52.4	74.3,48.6
		path	58.9,53.9	63.5,44.4	66.7,40.3
		path	65.1,30.5	58.9,27.8	58.9,21.1
		path	40.8,20.8	48.0,33.2	52.7,39.9
		path	47.8,43.1	46.8,39.7	39.6,32.8
		path	32.9,32.8	23.3,48.4	33.5,46.6
		path	35.8,49.9	40.0,50.9	38.0,54.9
		path	30.5,55.3	20.8,56.1	20.4,76.6
		path	22.6,78.5	22.5,84.0	34.2,78.4
		path	33.8,73.4	33.0,67.9	40.9,70.1
		path	34.5,88.9	50.9,88.8	51.5,82.1
		path	46.0,60.9	55.5,66.5	58.7,88.2
		path	62.3,74.5	63.6,84.4
		#include "follow_path_mine"
		..collect 20 Saronite Ore##36912
	step
		#include "maincity_forge"
		.create 10 Saronite Bar##49258,Mining,10 total
	step
	label "makearmy"
		.create 1 Gnomish Army Knife##56462,Engineering,1 total
		|next "menu"
//FORAGER'S GLOVES
	step
		goto Timeless Isle/0 68.5,39.9
		.from Burning Berserker##72895+
		..collect Forager's Gloves##86566 |tip This is a rare drop, so you may be grinding for a while.
		|next "menu"
]])

ZygorGuidesViewer:RegisterInclude("Gear_Collect_Gathering_Horde",[[
//HERBALIST'S GLOVES (HORDE)
	step
	label "herbgloves"
		#include "auctioneer"
		..buy 1 Herbalist's Gloves##7349 |next "menu"
		.' Click here if you wish to make these yourself. |confirm |next "lw7349" |only if skill("Leatherworking")>=135
	step
	label "lw7349"
		'This recipe is only available to the Alliance.
		.' You can check the _Neutral Auction House_ for the recipe, although it may be very expensive. |tip You may be lucky enough to find it in your home city's auction house as well.
		..buy 1 Pattern: Herbalist's Gloves##7361
	step
		'Use the Pattern: Herbalist's Gloves in your bags to learn the new pattern. |use Pattern: Herbalist's Gloves##7361
		.learn Herbalist's Gloves##9146
	step
	label "buylw7349"
		#include "auctioneer"
		..buy 8 Medium Leather##2319
		..buy 4 Kingsblood##3356
		|next "make7349"
		.' Click here if you wish to farm the Medium Leather yourself. |confirm |next "farmmed" |only if skill("Skinning")
		.' Click here if you wish to farm the Kingsblood yourself. |confirm |next "farmking" |only if skill("Herbalism")>=125
	step
	label "farmmed"
		goto Wetlands 67.6,47.2
		.from Ebon Slavehunter##42043+ |tip Skin any dragonkin you kill.
		..collect 8 Medium Leather##2319
		|next "buylw7349"
	step
	label "farmking"
		map Northern Stranglethorn
		path	29.2,25.0	27.5,22.1	25.7,22.0
		path	23.8,25.0	34.2,35.9	41.3,30.1
		path	43.6,43.1	46.3,54.1	53.7,60.8
		path	58.0,67.1	62.9,72.9	62.4,67.1
		path	60.5,56.0	58.9,19.5
		#include "follow_path_herbs"
		..collect 4 Kingsblood##3356
		|next "buylw7349"
	step
	label "make7349"
		.create 1 Herbalist's Gloves##9146,Leatherworking,1 total
		|next "menu"
//ANCIENT PANDAREN MINING PICK
	step
	label "ancientpick"
		goto The Jade Forest 45.5,29.5
		.click Ancient Pandaren Mining Pick##213364
		..collect 1 Ancient Pandaren Mining Pick##85777 |tip This object is a rare spawn, so you may need to wait around for a while.
		|next "menu"
//HERBALIST'S SPADE (HORDE)
	step
	label "herbspade"
		goto Orgrimmar 39.3,84.9
		.talk Pezik Lockfast##45552
		..buy Herbalist's Spade##85663
		|next "menu"
//GNOMISH ARMY KNIFE (HORDE)
	step
	label "armyknife"
		#include "auctioneer"
		..buy 1 Gnomish Army Knife##40772 |next "menu"
		.' Click here if you wish to make this yourself. |confirm |next "engarmy" |only if skill("Engineering")>=435
	step
	label "engarmy"
		#include "trainer_Engineering"
		.learn Gnomish Army Knife##56462
	step
		goto Orgrimmar 39.3,84.9
		.talk Pezik Lockfast##45552
		..buy 1 Skinning Knife##7005
		..buy 1 Mining Pick##2901
		..buy 1 Blacksmith Hammer##5956
	step
		#include "auctioneer"
		..buy 10 Saronite Bar##36913 |next "makearmy"
		.' Click here if you wish to farm these yourself. |confirm |next "farmsaro" |only if skill("Mining")>=400
	step
	label "farmsaro"
		map Sholazar Basin
		path follow strict
		path	77.9,63.8	78.7,52.4	74.3,48.6
		path	58.9,53.9	63.5,44.4	66.7,40.3
		path	65.1,30.5	58.9,27.8	58.9,21.1
		path	40.8,20.8	48.0,33.2	52.7,39.9
		path	47.8,43.1	46.8,39.7	39.6,32.8
		path	32.9,32.8	23.3,48.4	33.5,46.6
		path	35.8,49.9	40.0,50.9	38.0,54.9
		path	30.5,55.3	20.8,56.1	20.4,76.6
		path	22.6,78.5	22.5,84.0	34.2,78.4
		path	33.8,73.4	33.0,67.9	40.9,70.1
		path	34.5,88.9	50.9,88.8	51.5,82.1
		path	46.0,60.9	55.5,66.5	58.7,88.2
		path	62.3,74.5	63.6,84.4
		#include "follow_path_mine"
		..collect 20 Saronite Ore##36912
	step
		#include "maincity_forge"
		.create 10 Saronite Bar##49258,Mining,10 total
	step
	label "makearmy"
		.create 1 Gnomish Army Knife##56462,Engineering,1 total
//FORAGER'S GLOVES
	step
		goto Timeless Isle/0 68.5,39.9
		.from Burning Berserker##72895+
		..collect Forager's Gloves##86566 |tip This is a rare drop, so you may be grinding for a while.
]])

ZygorGuidesViewer:RegisterInclude("Poles_Collect_Fishing_Alliance",[[
//ROUTER
	step
	label "menu"
		'Click here to get the _Strong Fishing Pole_, which increases Fishing skill by _5_. |confirm |next "strong" |only if skill("Fishing")>=10 and itemcount(6365)==0
		.'_ |only if level>=85 and itemcount(84660)==0
		'Click here to get the _Pandaren Fishing Pole_, which increases Fishing skill by _10_. |confirm |next "pandaren" |only if level>=85 and itemcount(84660)==0
		.'_ |only if skill("Fishing")>=100 and itemcount(6367)==0
		'Click here to get the _Big Iron Fishing Pole_, which increases Fishing skill by _20_. |confirm |next "bigiron" |only if skill("Fishing")>=100 and itemcount(6367)==0
		.'_ |only if skill("Fishing")>=200 and level>=62 and itemcount(25978)==0
		'Click here to get the _Seth's Graphite Fishing Pole_, which increases Fishing skill by _20_. |confirm |next "seth" |only if skill("Fishing")>=200 and level>=62 and itemcount(25978)==0
		.'_ |only if skill("Fishing")>=100 and level=>29 and itemcount(19022)==0
		'Click here to get the _Nat Pagle's Extreme Angler FC-5000_, which increases Fishing skill by _20_. |confirm |next "fc5000" |only if skill("Fishing")>=100 and level=>29 and itemcount(19022)==0
		.'_ |only if skill("Fishing")>=300 and level>=10 and itemcount(45991)==0
		'Click here to get the _Bone Fishing Pole_, which increases Fishing skill by _30_. |confirm |next "bonejewel" |only if skill("Fishing")>=300 and level>=10 and itemcount(45991)==0
		.'_ |only if skill("Fishing")>=300 and level>=10 and itemcount(45992)==0
		'Click here to get the _Jeweled Fishing Pole_, which increases Fishing skill by _30_. |confirm |next "bonejewel" |only if skill("Fishing")>=300 and level>=10 and itemcount(45992)==0
		.'_ |only if skill("Fishing")>=525 and level>=85 and itemcount(84661)==0
		'Click here to get the _Dragon Fishing Pole_, which increases Fishing skill by _30_. |confirm |next "dragon" |only if skill("Fishing")>=525 and level>=85 and itemcount(84661)==0
		.'_ |only if skill("Fishing")>=300 and level>=68 and itemcount(44050)==0
		'Click here to get the _Mastercraft Kalu'ak Fishing Pole_, which increases Fishing skill by _30_. |confirm |next "kaluak" |only if skill("Fishing")>=300 and level>=68 and itemcount(44050)==0
//STRONG FISHING POLE
	step
	label "strong"
		goto Stormwind City 55.0,69.6
		.talk Catherine Leland##5494
		..buy 1 Strong Fishing Pole##6365
		|next "menu"
//PANDAREN FISHING POLE
	step
	label "pandaren"
		'This fishing pole will require you to become _Honored_ with the Anglers.
		.' You will need to complete dailies and catch rare fish in order to gain reputation with the Anglers faction. |only if not ZGV.guidesets['ReputationsAMOP'] and not ZGV.guidesets['DailiesAMOP']
		.' Click here to be taken to the Anglers dailies guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Alliance Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies" |only if ZGV.guidesets['DailiesAMOP']
		.' Click here to be taken to the Anglers reputations guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The Anglers" |only if ZGV.guidesets['ReputationsAMOP'] and not ZGV.guidesets['DailiesAMOP']
		.' Click here to be taken to _Nat Pagle_ in order to purchase the Fishing Pole. |confirm |next "buypanda"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buypanda"
		goto Krasarang Wilds 68.4,43.4
		.talk Nat Pagle##63721
		..buy 1 Pandaren Fishing Pole##84660
		|next "menu"
//BIG IRON FISHING POLE
	step
	label "bigiron"
		'This pole will require you to search crates underwater. It's suggested that you purchase some _Underwater Breathing Potions_ if you don't have the ability to breathe underwater.
		|confirm
	step
		goto Desolace 20.7,80.5
		.click Shellfish Trap |tip They are all underwater in this area.
		..collect 1 Big Iron Fishing Pole##6367
		|next "menu"
//SETH'S GRAPHITE FISHING POLE
	step
	label "seth"
		goto Shattrath City 64.0,15.8
		.talk Seth##18653
		..accept Rather Be Fishin'##10037
	step
		goto Terokkar Forest 39.6,9.6
		.from Shimmerscale Eel##18750
		..get 8 Pristine Shimmerscale Eel##25891 |q 10037/1
	step
		goto Shattrath City 64.0,15.8
		.talk Seth##18653
		..turnin Rather Be Fishin'##10037
		..collect 1 Seth's Graphite Fishing Pole##25978
//NAT PAGLE'S EXTREME ANGLER FC-5000
	step
	label "fc5000"
		goto The Hinterlands 66.2,44.2
		.talk Dron Blastbrew##43109
		..accept Snapjaws, Lad!##26485
	step
		goto The Hinterlands 77.4,66.8
		.from Saltwater Snapjaw##2505
		..get 8 Snapjaw Gizzard##58867 |q 26485/1
	step
		goto The Hinterlands 66.2,44.2
		.talk Dron Blastbrew##43109
		..turnin Snapjaws, Lad!##26485
		..collect 1 Nat Pagle's Extreme Angler FC-5000##19022
//BONE FISHING POLE/JEWELED FISHING POLE
	step
	label "bonejewel"
		'You must complete the Fishing Daily quests in Stormwind City or Dalaran to obtain this item.
		.' Click here to do the Stormwind Daily Quests. |next "swbone" |confirm
		.' Click here to do the Dalaran Daily Quests. |next "dalbone" |confirm
		.' Click here to return to the main menu |confirm |next "menu"
	step
	label "dalbone"
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..accept Blood Is Thicker##13833 |or
		..accept Dangerously Delicious##13834 |or
		..accept Jewel Of The Sewers##13832 |or
		..accept Disarmed!##13836 |or
		..accept The Ghostfish##13830 |or
	step
		goto Borean Tundra,54.6,41.8
		.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
		.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
		only if havequest (13833)
	step
		goto 53.7,42.9
		.' Walk into the water here to create a pool of blood
		.' Fish in the pool of blood
		.get 5 Bloodtooth Frenzy |q 13833/1
		only if havequest (13833)
	step
		goto Wintergrasp,79.9,41.8
		.' Fish in this big lake
		.get 10 Terrorfish |q 13834/1
		only if havequest (13834)
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto 44.4,66.2
		.' Fish in the water in the Dalaran sewers
		.get 1 Corroded Jewelry |q 13832/1
		only if havequest (13832)
	step
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto Dalaran,64.8,60.8
		.' Stand on the this circular platform and fish in the water here
		.collect Bloated Slippery Eel##45328|n
		.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
		.get 1 Severed Arm |q 13836/1
		only if havequest (13836)
	step
		goto Sholazar Basin,49.3,61.8
		.' Fish in the water here
		.collect 1 Phantom Ghostfish##45902|n
		.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
		.' Discover the Ghostfish mystery |q 13830/1
		only if havequest (13830)
	step
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..turnin Blood Is Thicker##13833
		..turnin Dangerously Delicious##13834
		..turnin Jewel Of The Sewers##13832
		..turnin The Ghostfish##13830
		|only if havequest(13833) or havequest(13834) or havequest(13832) or havequest(13830)
		|next "usetreas"
	step
		goto Dalaran,36.6,37.3
		.talk Olisarra the Kind##28706
		..turnin Disarmed!##13836
		(only if havequest(13836)
		|next "usetreas"
	step
	label "usetreas"
		|use Bag of Fishing Treasures##46007
		.collect 1 Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "bonejewel" |confirm
	step
	label "swbone"
		goto Stormwind City,55.0,69.7
		.talk Catherine Leland##5494
		.' You will only be able to pick up one of these quests.
		.accept Hitting a Walleye##26414 |or
		.accept Diggin' For Worms##26420 |or
		.accept Rock Lobster##26442 |or
		.accept Big Gulp##26488 |or
		.accept Thunder Falls##26536 |or
	step
		goto 56.5,41.6
		.' Use your fishing ability to fish in the lake. |cast Fishing##7620
		.get Hardened Walleye##58503 |q 26414
		only if havequest (26414)
	step
		goto 58.3,13.2
		.' Look for sparkling mounds in the grass around the pond.
		.get Overgrown Earthworm |q 26420 |n
		.' Use the Overgrown Earthworm |use Overgrown Earthworm##58788
		.' Fish in Olivia's Pond |cast Fishing##7620
		.get Crystal Bass##58787 |q 26420/1
		only if havequest (26420)
	step
		goto Stormwind City,22.4,29.0
		.' Swim around Stormwind Harbor and click The Stormwind Lobster Traps
		.get 6 Rock Lobster##58809 |q 26442/1
		only if havequest (26442)
	step
		goto Stormwind City,69.1,92.2
		.' Use your fishing skill in the moat. |cast Fishing##7620
		.get Royal Monkfish##58856 |n
		.' Click the Royal Monkfish |use Royal Monkfish##58856
		.collect Precious Locket##58864
		only if havequest (26488)
	step
		goto Elwynn Forest,27.1,60.6
		.' Use your fishing skill in the water here. |cast Fishing##7620
		.get 4 Violet Perch##58899 |q 26536/1
		only if havequest (26536)
	step
		goto Stormwind City,55.0,69.7
		.talk Catherine Leland##5494
		.' You will only be able to turn in one of these quests.
		.turnin Hitting a Walleye##26414 |or
		.turnin Diggin' For Worms##26420 |or
		.turnin Rock Lobster##26442 |or
		.turnin Big Gulp##26488 |or
		.turnin Thunder Falls##26536 |or
	step
		|use Bag of Shiny Things##67414
		.collect Bone Fishing Pole##45991 |or |next "menu"
		.collect Jeweled Fishing Pole##45992 |or |next "menu"
		.' Click here to go to the beginning of this guide. |next "bonejewel" |confirm
//DRAGON FISHING POLE
	step
	label "dragon"
		'This fishing pole will require you to become _Revered_ with the Anglers.
		.' You will need to complete dailies and catch rare fish in order to gain reputation with the Anglers faction. |only if not ZGV.guidesets['ReputationsAMOP'] and not ZGV.guidesets['DailiesAMOP']
		.' Click here to be taken to the Anglers dailies guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Alliance Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies" |only if ZGV.guidesets['DailiesAMOP']
		.' Click here to be taken to the Anglers reputations guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The Anglers" |only if ZGV.guidesets['ReputationsAMOP'] and not ZGV.guidesets['DailiesAMOP']
		.' Click here to be taken to _Nat Pagle_ in order to purchase the Fishing Pole. |confirm |next "buydragon"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buydragon"
		goto Krasarang Wilds 68.4,43.4
		.talk Nat Pagle##63721
		..buy 1 Pandaren Fishing Pole##84660
		|next "menu"
//MASTERCRAFT KALU'AK FISHING POLE
	step
	label "kaluak"
		'This fishing pole will require you to become _Exalted_ with the Kalu'ak.
		.' You will need to complete dailies for the Kalu'ak in order to gain reputation with this faction.
		.' Click here to be taken to the Kalu'ak reputations guide to complete quests and gain reputation with this faction. |confirm |next "Zygor's Alliance Reputations Guides\\Northrend\\Kalu'ak"
		.' Click here to be taken to _Tanaika_ in order to purchase the Fishing Pole. |confirm |next "buykaluak"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buy kaluak"
		goto Howling Fjord 25.4,58.6
		.talk Tanaika##31916
		..buy 1 Mastercraft Kalu'ak Fishing Pole##44050
		|next "menu"
]])

ZygorGuidesViewer:RegisterInclude("Poles_Collect_Fishing_Horde",[[
//ROUTER
	step
	label "menu"
		'Click here to get the _Strong Fishing Pole_, which increases Fishing skill by _5_. |confirm |next "strong" |only if skill("Fishing")>=10 and itemcount(6365)==0
		.'_ |only if level>=85 and itemcount(84660)==0
		'Click here to get the _Pandaren Fishing Pole_, which increases Fishing skill by _10_. |confirm |next "pandaren" |only if level>=85 and itemcount(84660)==0
		.'_ |only if skill("Fishing")>=100 and itemcount(6367)==0
		'Click here to get the _Big Iron Fishing Pole_, which increases Fishing skill by _20_. |confirm |next "bigiron" |only if skill("Fishing")>=100 and itemcount(6367)==0
		.'_ |only if skill("Fishing")>=200 and level>=62 and itemcount(25978)==0
		'Click here to get the _Seth's Graphite Fishing Pole_, which increases Fishing skill by _20_. |confirm |next "seth" |only if skill("Fishing")>=200 and level>=62 and itemcount(25978)==0
		.'_ |only if skill("Fishing")>=100 and level=>29 and itemcount(19022)==0
		'Click here to get the _Nat Pagle's Extreme Angler FC-5000_, which increases Fishing skill by _20_. |confirm |next "fc5000" |only if skill("Fishing")>=100 and level=>29 and itemcount(19022)==0
		.'_ |only if skill("Fishing")>=300 and level>=10 and itemcount(45991)==0
		'Click here to get the _Bone Fishing Pole_, which increases Fishing skill by _30_. |confirm |next "bonejewel" |only if skill("Fishing")>=300 and level>=10 and itemcount(45991)==0
		.'_ |only if skill("Fishing")>=300 and level>=10 and itemcount(45992)==0
		'Click here to get the _Jeweled Fishing Pole_, which increases Fishing skill by _30_. |confirm |next "bonejewel" |only if skill("Fishing")>=300 and level>=10 and itemcount(45992)==0
		.'_ |only if skill("Fishing")>=525 and level>=85 and itemcount(84661)==0
		'Click here to get the _Dragon Fishing Pole_, which increases Fishing skill by _30_. |confirm |next "dragon" |only if skill("Fishing")>=525 and level>=85 and itemcount(84661)==0
		.'_ |only if skill("Fishing")>=300 and level>=68 and itemcount(44050)==0
		'Click here to get the _Mastercraft Kalu'ak Fishing Pole_, which increases Fishing skill by _30_. |confirm |next "kaluak" |only if skill("Fishing")>=300 and level>=68 and itemcount(44050)==0
//STRONG FISHING POLE
	step
	label "strong"
		goto Orgrimmar 66.6,41.6
		.talk Shankys##3333
		..buy 1 Strong Fishing Pole##6365
		|next "menu"
//PANDAREN FISHING POLE
	step
	label "pandaren"
		'This fishing pole will require you to become _Honored_ with the Anglers.
		.' You will need to complete dailies and catch rare fish in order to gain reputation with the Anglers faction. |only if not ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
		.' Click here to be taken to the Anglers dailies guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies" |only if ZGV.guidesets['DailiesHMOP']
		.' Click here to be taken to the Anglers reputations guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Anglers" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
		.' Click here to be taken to _Nat Pagle_ in order to purchase the Fishing Pole. |confirm |next "buypanda"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buypanda"
		goto Krasarang Wilds 68.4,43.4
		.talk Nat Pagle##63721
		..buy 1 Pandaren Fishing Pole##84660
		|next "menu"
//BIG IRON FISHING POLE
	step
	label "bigiron"
		'This pole will require you to search crates underwater. It's suggested that you purchase some _Underwater Breathing Potions_ if you don't have the ability to breathe underwater.
		|confirm
	step
		goto Desolace 20.7,80.5
		.click Shellfish Trap |tip They are all underwater in this area.
		..collect 1 Big Iron Fishing Pole##6367
		|next "menu"
//SETH'S GRAPHITE FISHING POLE
	step
	label "seth"
		goto Shattrath City 64.0,15.8
		.talk Seth##18653
		..accept Rather Be Fishin'##10037
	step
		goto Terokkar Forest 39.6,9.6
		.from Shimmerscale Eel##18750
		..get 8 Pristine Shimmerscale Eel##25891 |q 10037/1
	step
		goto Shattrath City 64.0,15.8
		.talk Seth##18653
		..turnin Rather Be Fishin'##10037
		..collect 1 Seth's Graphite Fishing Pole##25978
//NAT PAGLE'S EXTREME ANGLER FC-5000
	step
	label "fc5000"
		goto The Hinterlands 80.4,81.4
		.talk Katoom the Angler##14740
		..accept Snapjaws, Mon!##26211
	step
		goto The Hinterlands 77.4,66.8
		.from Saltwater Snapjaw##2505 |q 26211/1
	step
		goto The Hinterlands 80.4,81.4
		.talk Katoom the Angler##14740
		..turnin Snapjaws, Mon!##26211
		..collect 1 Nat Pagle's Extreme Angler FC-5000##19022
//BONE FISHING POLE/JEWELED FISHING POLE
	step
	label "bonejewel"
		'This fishing pole is acquired by completing the fishing dailies in Orgrimmar and Dalaran.
		.' Click here to be taken to the Orgrimmar fishing dailies guide. |confirm |next "orgbone"
		.' Click here to be taken to the Dalaran fishing dailies guide. |confirm |next "dalbone"
	step
	label "dalbone"
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..accept Blood Is Thicker##13833 |or
		..accept Dangerously Delicious##13834 |or
		..accept Jewel Of The Sewers##13832 |or
		..accept Disarmed!##13836 |or
		..accept The Ghostfish##13830 |or
	step
		goto Borean Tundra,54.6,41.8
		.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
		.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
		only if havequest (13833)
	step
		goto 53.7,42.9
		.' Walk into the water here to create a pool of blood
		.' Fish in the pool of blood
		.get 5 Bloodtooth Frenzy |q 13833/1
		only if havequest (13833)
	step
		goto Wintergrasp,79.9,41.8
		.' Fish in this big lake
		.get 10 Terrorfish |q 13834/1
		only if havequest (13834)
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto 44.4,66.2
		.' Fish in the water in the Dalaran sewers
		.get 1 Corroded Jewelry |q 13832/1
		only if havequest (13832)
	step
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto Dalaran,64.8,60.8
		.' Stand on the this circular platform and fish in the water here
		.collect Bloated Slippery Eel##45328|n
		.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
		.get 1 Severed Arm |q 13836/1
		only if havequest (13836)
	step
		goto Sholazar Basin,49.3,61.8
		.' Fish in the water here
		.collect 1 Phantom Ghostfish##45902|n
		.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
		.' Discover the Ghostfish mystery |q 13830/1
		only if havequest (13830)
	step
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..turnin Blood Is Thicker##13833
		..turnin Dangerously Delicious##13834
		..turnin Jewel Of The Sewers##13832
		..turnin The Ghostfish##13830
		|only if havequest(13833) or havequest(13834) or havequest(13832) or havequest(13830)
		|next "usetreas"
	step
		goto Dalaran,36.6,37.3
		.talk Olisarra the Kind##28706
		..turnin Disarmed!##13836
		(only if havequest(13836)
		|next "usetreas"
	step
	label "usetreas"
		|use Bag of Fishing Treasures##46007
		.collect 1 Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "bonejewel" |confirm
	step
	label "orgbone"
		goto Orgrimmar,65.7,41.1
		.talk Razgar##43239
		..' You will only be able to complete 1 of the following quests per day
		..accept A Furious Catch##26588 |or
		..accept A Golden Opportunity##26572 |or
		..accept A Staggering Effort##26557 |or
		..accept Clammy Hands##26543 |or
		..accept No Dumping Allowed##26556 |or
	step
		goto Durotar,37.4,16.8
		.' Fish in the river in this spot
		.get Giant Furious Pike |q 26588/1 |tip This fish can only be caught in Durotar, so make sure you are standing and fishing in Durotar.
	step
		goto 42.8,24.0
		.' Use Razgar's Fillet Knife on a Drowned Thunder Lizard |use Razgar's Fillet Knife##58955 |tip They look like dead dinosaurs underwater around this area.
		.collect Drowned Thunder Lizard Tail##58958 |n
		.' Use your Drowned Thunder Lizard Tail next to Golden Stonefish |use Drowned Thunder Lizard Tail##58958 |tip They look like big yellow fish underwater around this area.
		.get 3 Golden Stonefish |q 26572/1
	step
		goto 57.2,9.5
		.' Click Monstrous Clams |tip They look like huge white clams underwater around this area.
		.get 10 Monstrous Clam Meat |q 26543/1	
	step
		goto Azshara,27.6,74.5
		.from Weakened Mosshoof Stag##35096+
		.collect 1 Stag Eye##58949 |q 26557
	step
		 goto Orgrimmar,46.2,46.5
		.' Use your Stag Eye |use Stag Eye##58949
		.' Fish in the water off the dock in this spot
		.get Sandy Carp |q 26557/1
	step
		goto 38.5,80.1
		.' Fish in the water in this spot
		.get 6 Toxic Puddlefish |q 26556/1
	step
		goto 65.7,41.1
		.talk Razgar##43239
		..' You will only be able to complete 1 of the following quests per day
		..turnin A Furious Catch##26588
		..turnin A Golden Opportunity##26572
		..turnin A Staggering Effort##26557
		..turnin Clammy Hands##26543
		..turnin No Dumping Allowed##26556
	step
		|use Bag of Shiny Things##67414
		.collect Bone Fishing Pole##45991 |or |next "menu"
		.collect Jeweled Fishing Pole##45992 |or |next "menu"
		.' Click here to go to the beginning of this guide. |next "bonejewel" |confirm
//DRAGON FISHING POLE
	step
	label "dragon"
		'This fishing pole will require you to become _Revered_ with the Anglers.
		.' You will need to complete dailies and catch rare fish in order to gain reputation with the Anglers faction. |only if not ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
		.' Click here to be taken to the Anglers dailies guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies" |only if ZGV.guidesets['DailiesHMOP']
		.' Click here to be taken to the Anglers reputations guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Anglers" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
		.' Click here to be taken to _Nat Pagle_ in order to purchase the Fishing Pole. |confirm |next "buydragon"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buydragon"
		goto Krasarang Wilds 68.4,43.4
		.talk Nat Pagle##63721
		..buy 1 Pandaren Fishing Pole##84660
		|next "menu"
//MASTERCRAFT KALU'AK FISHING POLE
	step
	label "kaluak"
		'This fishing pole will require you to become _Exalted_ with the Kalu'ak.
		.' You will need to complete dailies for the Kalu'ak in order to gain reputation with this faction.
		.' Click here to be taken to the Kalu'ak reputations guide to complete quests and gain reputation with this faction. |confirm |next "Zygor's Horde Reputations Guides\\Northrend\\Kalu'ak" |only if ZGV.guidesets['ReputationsHMOP']
		.' Click here to be taken to _Tanaika_ in order to purchase the Fishing Pole. |confirm |next "buykaluak"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buy kaluak"
		goto Howling Fjord 25.4,58.6
		.talk Tanaika##31916
		..buy 1 Mastercraft Kalu'ak Fishing Pole##44050
		|next "menu"
]])

ZygorGuidesViewer:RegisterInclude("Gear_Collect_Fishing_Alliance",[[
//ROUTER
	step
	label "menu"
		'Click here to get the _Darkmoon Fishing Cap_, which increases your Fishing skill by 5, and will spawn a pool of Shipwrecked Debris while on Darkmoon Island. |confirm |next "darkmoonhat" and itemcount(93732)==0
		.'_ |only if level>=85 and itemcount(88710)==0
		'Click here to get _Nat's Hat_, which increases your Fishing skill by 5, and doubles as a 150 Fishing lure. |confirm |next "natshat" |only if level>=85 and itemcount(88710)==0
		.'_
		'Click here to get the _Weather-Beaten Fishing Hat_, which increases your Fishing skill by 5, and doubles as a 75 Fishing lure. |confirm |next "weatherhat"
		.'_
		'Click here to get the _Reinforced Fishing Line_, which gives a permanent +1 boost to Fishing skill on your Fishing Pole. |confirm |next "reinforcedline"
		.'_ |only if skill("Fishing")>=300
		'Click here to get the _Spun Truesilver Fishing Line_, which grants a permanent +3 boost to Fishing skill on your Fishing Pole. |confirm |next "truefish" |only if skill("Fishing")>=300
		.'_ |only if level>=85 and itemcount(88535)==0
		'Click here to get the _Sharpened Tuskarr Spear_, which can be planted in the ground, and increases Fishing skill by 15 for anyone who remains within 15 yds for 2 minutes. |confirm |next "tuskspear" |only if level>=85 and itemcount(88535)==0
		.'_ |only if level>=85 and itemcount(85973)==0
		'Click here to get the _Ancient Pandaren Fishing Charm_, which grants you a chance to find additional fish from pools in Pandaria. |confirm |next "pandafishcharm" |only if level>=85 and itemcount(85973)==0
		.'_ |only if skill("Fishing")>=100 and not _G.IsSpellKnown(43308)
		'Click here to get the _Weather-Beaten Journal_, which grants you the ability to _Find Fish_. |confirm |next "weatherjournal" |only if skill("Fishing")>=100 and not _G.IsSpellKnown(43308)
//DARKMOON FISHING CAP
	step
	label "darkmooncap"
		'This item will require the _Darkmoon Faire_ to be open. |tip The Darkmoon Faire opens on the first Sunday of each month, and lasts for one week.
		|confirm |next
		.' Click here to return to the main menu. |confirm |next "menu"
	step
		goto Darkmoon Island 51.8,91.1
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. |cast Fishing##131474
		..collect Darkmoon Fishing Cap##93732 |tip This item is a rare drop, so you may be fishing for a while.
		|next "menu"
//NAT'S HAT
	step
	label "natshat"
		'This item will require you to become _Best Friends_ with Nat Pagle.
		.' You will need to catch rare fish in Pandaria in order to gain reputation with him.
		.' Click here to be taken to the Nat Pagle reputations guide for assistance in finding the rare fish required for gaining reputation with Nat Pagle. |confirm |next "Zygor's Alliance Reputations Guides\\Mists of Pandaria\\Nat Pagle" |only if ZGV.guidesets['ReputationsAMOP']
		.' Click here to be taken to Nat Pagle to turn in fish and to purchase Nat's Hat. |confirm |next "buynatpagle"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buynatpagle"
		goto Krasarang Wilds 68.4,43.5
		.talk Nat Pagle##63721
		..buy Nat's Hat##88710
		|next "menu"
//REINFORCED FISHING LINE
	step
	label "reinforcedline"
		goto Westfall 46.9,59.3
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. |cast Fishing##131474
		..collect Strendel's Bane##68795 |tip This item is a rare drop, so you may be fishing for a while.
	step
		'Use _Strendel's Bane_ in your bags to open it. |use Strendel's Bane##68795
		.collect Reinforced Fishing Line##68796
		|next "menu"
//SHARPENED TUSKARR SPEAR
	step
	label "tuskspear"
		'This item will require you to become _Revered_ with the Anglers.
		.' You will need to complete dailies and catch rare fish in order to gain reputation with the Anglers faction. |only if not ZGV.guidesets['ReputationsAMOP'] and not ZGV.guidesets['DailiesAMOP']
		.' Click here to be taken to the Anglers dailies guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Alliance Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies" |only if ZGV.guidesets['DailiesAMOP']
		.' Click here to be taken to the Anglers reputations guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Alliance Reputations Guides\\Mists of Pandaria\\The Anglers" |only if ZGV.guidesets['ReputationsAMOP'] and not ZGV.guidesets['DailiesAMOP']
		.' Click here to be taken to _Nat Pagle_ in order to purchase the Sharpened Tuskarr Spear. |confirm |next "buytuskspear"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buytuskspear"
		goto Krasarang Wilds 68.4,43.4
		.talk Nat Pagle##63721
		..buy Sharpened Tuskarr Spear##88535
		|next "menu"
//ANCIENT PANDAREN FISHING CHARM
	step
	label "pandafishcharm"
		goto Valley of the Four Winds 46.9,24.4
		.talk Ghostly Pandaren Fisherman##64004 |tip This NPC is a rare spawn, so you may need to wait a while.
		.' Tell him, "Sure, I'll take one."
		..collect Ancient Pandaren Fishing Charm##85973
		|next "menu"
//WEATHER-BEATEN JOURNAL
	step
	label "weatherjournal"
		map Wetlands
		path	63.6,75.7	60.4,70.4	60.6,59.6
		path	63.8,55.1	65.8,58.8	65.5,66.7
		path	67.3,73.0
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in _Schooner Wreckage Pools_ along this path. |cast Fishing##131474
		.' Open any _Watertight Trunks_ you fish up. |use Watertight Trunk##21113
		..collect Weather-Beaten Journal##34109
		|next "menu"
//SPUN TRUESILVER FISHING LINE
	step
	label "truefish"
		'You must complete the Fishing Daily quests in Terokkar Forest to obtain this item.
		.' Click here to do the Dalaran Daily Quests. |next "terofish" |confirm
		.' Click here to go back to the main menu. |confirm |next "menu"
	step
	label "terofish"
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.accept Crocolisks in the City##11665 |or
		.accept Bait Bandits##11666 |or
		.accept Felblood Fillet##11669 |or
		.accept The One That Got Away##11667 |or
		.accept Shrimpin' Ain't Easy##11668 |or
	step
		goto Stormwind City,54.9,69.7
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		..get Baby Crocolisk##34864 |q 11665/1
		only if havequest(11665)
	step
		goto Terokkar Forest,51.8,37.2
		.' Fish in the river here |cast Fishing##7620
		..get Blackfin Darter##34865 |q 11666/1
		only if havequest(11666)
	step
		goto Nagrand,37.4,47.1
		.' Use your fishing ability to fish in the lake. |cast Fishing##7620
		..get World's Largest Mudfish##34868 |q 11667/1
		only if havequest(11667)
	step
		goto Zangarmarsh,77.9,79.7
		.' Fish from the Lake here |cast Fishing##7620
		.'Click the Bloated Barbed Gill Trout in your bags|use Bloated Barbed Gill Trout##35313
		..get 10 Giant Freshwater Shrimp##34866 |q 11668/1
		only if havequest(11668)
	step
		goto Shadowmoon Valley,18.9,22.2
		.' Use your fishing ability in the green lava. |cast Fishing##7620
		..get Monstrous Felblood Snapper |q 11669/1
		only if havequest(11669)
	step
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.turnin Crocolisks in the City##11665 |or
		.turnin Bait Bandits##11666 |or
		.turnin Felblood Fillet##11669 |or
		.turnin The One That Got Away##11667 |or
		.turnin Shrimpin' Ain't Easy##11668 |or
		|next "use2"
	step
	label "use2"
		'Open the Bag of Fishing Treasures in your bags |use Bag of Fishing Treasures##46007
		.collect Spun Truesilver Fishing Line |next "menu"
		.' Click here to go to the beginning of this daily guide. |next "truefish" |confirm
//WEATHER-BEATEN FISHING HAT
	step
	label "weatherhat"
		'You must complete the Fishing Daily quests in Stormwind City, Terokkar Forest, or Dalaran to obtain this item.
		.' Click here to do the Stormwind Daily Quests. |next "swhat" |confirm
		.' Click here to do the Dalaran Daily Quests. |next "dalhat" |confirm
		.' Click here to do the Terokkar Daily Quests. |next "terohat" |confirm
		.' Click here to return to the main menu |confirm |next "menu"
	step
	label "dalhat"
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..accept Blood Is Thicker##13833 |or
		..accept Dangerously Delicious##13834 |or
		..accept Jewel Of The Sewers##13832 |or
		..accept Disarmed!##13836 |or
		..accept The Ghostfish##13830 |or
	step
		goto Borean Tundra,54.6,41.8
		.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
		.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
		only if havequest (13833)
	step
		goto 53.7,42.9
		.' Walk into the water here to create a pool of blood
		.' Fish in the pool of blood
		.get 5 Bloodtooth Frenzy |q 13833/1
		only if havequest (13833)
	step
		goto Wintergrasp,79.9,41.8
		.' Fish in this big lake
		.get 10 Terrorfish |q 13834/1
		only if havequest (13834)
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto 44.4,66.2
		.' Fish in the water in the Dalaran sewers
		.get 1 Corroded Jewelry |q 13832/1
		only if havequest (13832)
	step
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto Dalaran,64.8,60.8
		.' Stand on the this circular platform and fish in the water here
		.collect Bloated Slippery Eel##45328|n
		.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
		.get 1 Severed Arm |q 13836/1
		only if havequest (13836)
	step
		goto Sholazar Basin,49.3,61.8
		.' Fish in the water here
		.collect 1 Phantom Ghostfish##45902|n
		.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
		.' Discover the Ghostfish mystery |q 13830/1
		only if havequest (13830)
	step
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..turnin Blood Is Thicker##13833
		..turnin Dangerously Delicious##13834
		..turnin Jewel Of The Sewers##13832
		..turnin The Ghostfish##13830
		|only if havequest(13833) or havequest(13834) or havequest(13832) or havequest(13830)
		|next "usetreas"
	step
		goto Dalaran,36.6,37.3
		.talk Olisarra the Kind##28706
		..turnin Disarmed!##13836
		(only if havequest(13836)
		|next "usetreas"
	step
	label "usetreas"
		|use Bag of Fishing Treasures##46007
		.collect 1 Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "weatherhat" |confirm
	step
	label "swhat"
		goto Stormwind City,55.0,69.7
		.talk Catherine Leland##5494
		.' You will only be able to pick up one of these quests.
		.accept Hitting a Walleye##26414 |or
		.accept Diggin' For Worms##26420 |or
		.accept Rock Lobster##26442 |or
		.accept Big Gulp##26488 |or
		.accept Thunder Falls##26536 |or
	step
		goto 56.5,41.6
		.' Use your fishing ability to fish in the lake. |cast Fishing##7620
		.get Hardened Walleye##58503 |q 26414
		only if havequest (26414)
	step
		goto 58.3,13.2
		.' Look for sparkling mounds in the grass around the pond.
		.get Overgrown Earthworm |q 26420 |n
		.' Use the Overgrown Earthworm |use Overgrown Earthworm##58788
		.' Fish in Olivia's Pond |cast Fishing##7620
		.get Crystal Bass##58787 |q 26420/1
		only if havequest (26420)
	step
		goto Stormwind City,22.4,29.0
		.' Swim around Stormwind Harbor and click The Stormwind Lobster Traps
		.get 6 Rock Lobster##58809 |q 26442/1
		only if havequest (26442)
	step
		goto Stormwind City,69.1,92.2
		.' Use your fishing skill in the moat. |cast Fishing##7620
		.get Royal Monkfish##58856 |n
		.' Click the Royal Monkfish |use Royal Monkfish##58856
		.collect Precious Locket##58864
		only if havequest (26488)
	step
		goto Elwynn Forest,27.1,60.6
		.' Use your fishing skill in the water here. |cast Fishing##7620
		.get 4 Violet Perch##58899 |q 26536/1
		only if havequest (26536)
	step
		goto Stormwind City,55.0,69.7
		.talk Catherine Leland##5494
		.' You will only be able to turn in one of these quests.
		.turnin Hitting a Walleye##26414 |or
		.turnin Diggin' For Worms##26420 |or
		.turnin Rock Lobster##26442 |or
		.turnin Big Gulp##26488 |or
		.turnin Thunder Falls##26536 |or
	step
		|use Bag of Shiny Things##67414
		.collect Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "weatherhat" |confirm
	step
	label "terohat"
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.accept Crocolisks in the City##11665 |or
		.accept Bait Bandits##11666 |or
		.accept Felblood Fillet##11669 |or
		.accept The One That Got Away##11667 |or
		.accept Shrimpin' Ain't Easy##11668 |or
	step
		goto Stormwind City,54.9,69.7
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		..get Baby Crocolisk##34864 |q 11665/1
		only if havequest(11665)
	step
		goto Terokkar Forest,51.8,37.2
		.' Fish in the river here |cast Fishing##7620
		..get Blackfin Darter##34865 |q 11666/1
		only if havequest(11666)
	step
		goto Nagrand,37.4,47.1
		.' Use your fishing ability to fish in the lake. |cast Fishing##7620
		..get World's Largest Mudfish##34868 |q 11667/1
		only if havequest(11667)
	step
		goto Zangarmarsh,77.9,79.7
		.' Fish from the Lake here |cast Fishing##7620
		.'Click the Bloated Barbed Gill Trout in your bags|use Bloated Barbed Gill Trout##35313
		..get 10 Giant Freshwater Shrimp##34866 |q 11668/1
		only if havequest(11668)
	step
		goto Shadowmoon Valley,18.9,22.2
		.' Use your fishing ability in the green lava. |cast Fishing##7620
		..get Monstrous Felblood Snapper |q 11669/1
		only if havequest(11669)
	step
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to turn in 1 of 5 dailies per day.
		.turnin Crocolisks in the City##11665 |or |next "croco"
		.turnin Bait Bandits##11666 |or |next "notcroc"
		.turnin Felblood Fillet##11669 |or |next "notcroc"
		.turnin The One That Got Away##11667 |or |next "notcroc"
		.turnin Shrimpin' Ain't Easy##11668 |or |next "notcroc"
	step
	label "notcroc"
		|use Bag of Fishing Treasures##34863
		.collect 1 Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "weatherhat" |confirm
	step
	label "croco"
		|use Bag of Fishing Treasures##35348
		.collect 1 Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "weatherhat" |confirm
]])

ZygorGuidesViewer:RegisterInclude("Gear_Collect_Fishing_Horde",[[
//ROUTER
	step
	label "menu"
		'Click here to get the _Darkmoon Fishing Cap_, which increases your Fishing skill by 5, and will spawn a pool of Shipwrecked Debris while on Darkmoon Island. |confirm |next "darkmoonhat" and itemcount(93732)==0
		.'_ |only if level>=85 and itemcount(88710)==0
		'Click here to get _Nat's Hat_, which increases your Fishing skill by 5, and doubles as a 150 Fishing lure. |confirm |next "natshat" |only if level>=85 and itemcount(88710)==0
		.'_
		'Click here to get the _Weather-Beaten Fishing Hat_, which increases your Fishing skill by 5, and doubles as a 75 Fishing lure. |confirm |next "weatherhat"
		.'_
		'Click here to get the _Reinforced Fishing Line_, which gives a permanent +1 boost to Fishing skill on your Fishing Pole. |confirm |next "reinforcedline"
		.'_ |only if skill("Fishing")>=300
		'Click here to get the _Spun Truesilver Fishing Line_, which grants a permanent +3 boost to Fishing skill on your Fishing Pole. |confirm |next "truefish" |only if skill("Fishing")>=300
		.'_ |only if level>=85 and itemcount(88535)==0
		'Click here to get the _Sharpened Tuskarr Spear_, which can be planted in the ground, and increases Fishing skill by 15 for anyone who remains within 15 yds for 2 minutes. |confirm |next "tuskspear" |only if level>=85 and itemcount(88535)==0
		.'_ |only if level>=85 and itemcount(85973)==0
		'Click here to get the _Ancient Pandaren Fishing Charm_, which grants you a chance to find additional fish from pools in Pandaria. |confirm |next "pandafishcharm" |only if level>=85 and itemcount(85973)==0
		.'_ |only if skill("Fishing")>=100 and not _G.IsSpellKnown(43308)
		'Click here to get the _Weather-Beaten Journal_, which grants you the ability to _Find Fish_. |confirm |next "weatherjournal" |only if skill("Fishing")>=100 and not _G.IsSpellKnown(43308)
//DARKMOON FISHING CAP
	step
	label "darkmooncap"
		'This item will require the _Darkmoon Faire_ to be open. |tip The Darkmoon Faire opens on the first Sunday of each month, and lasts for one week.
		|confirm |next
		.' Click here to return to the main menu. |confirm |next "menu"
	step
		goto Darkmoon Island 51.8,91.1
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. |cast Fishing##131474
		..collect Darkmoon Fishing Cap##93732 |tip This item is a rare drop, so you may be fishing for a while.
		|next "menu"
//NAT'S HAT
	step
	label "natshat"
		'This item will require you to become _Best Friends_ with Nat Pagle.
		.' You will need to catch rare fish in Pandaria in order to gain reputation with him.
		.' Click here to be taken to the Nat Pagle reputations guide for assistance in finding the rare fish required for gaining reputation with Nat Pagle. |confirm |next "Zygor's Horde Reputations Guides\\Mists of Pandaria\\Nat Pagle" |only if ZGV.guidesets['ReputationsHMOP']
		.' Click here to be taken to Nat Pagle to turn in fish and to purchase Nat's Hat. |confirm |next "buynatpagle"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buynatpagle"
		goto Krasarang Wilds 68.4,43.5
		.talk Nat Pagle##63721
		..buy Nat's Hat##88710
		|next "menu"
//REINFORCED FISHING LINE
	step
	label "reinforcedline"
		goto Westfall 46.9,59.3
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in the water here. |cast Fishing##131474
		..collect Strendel's Bane##68795 |tip This item is a rare drop, so you may be fishing for a while.
	step
		'Use _Strendel's Bane_ in your bags to open it. |use Strendel's Bane##68795
		.collect Reinforced Fishing Line##68796
		|next "menu"
//SHARPENED TUSKARR SPEAR
	step
	label "tuskspear"
		'This item will require you to become _Revered_ with the Anglers.
		.' You will need to complete dailies and catch rare fish in order to gain reputation with the Anglers faction. |only if not ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
		.' Click here to be taken to the Anglers dailies guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Horde Dailies Guides\\Pandaria (85 - 90)\\The Anglers Dailies" |only if ZGV.guidesets['DailiesHMOP']
		.' Click here to be taken to the Anglers reputations guide to complete quests and gain reputation with the faction. |confirm |next "Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Anglers" |only if ZGV.guidesets['ReputationsHMOP'] and not ZGV.guidesets['DailiesHMOP']
		.' Click here to be taken to _Nat Pagle_ in order to purchase the Sharpened Tuskarr Spear. |confirm |next "buytuskspear"
		.' Click here to be taken to the main menu. |confirm |next "menu"
	step
	label "buytuskspear"
		goto Krasarang Wilds 68.4,43.4
		.talk Nat Pagle##63721
		..buy Sharpened Tuskarr Spear##88535
		|next "menu"
//ANCIENT PANDAREN FISHING CHARM
	step
	label "pandafishcharm"
		goto Valley of the Four Winds 46.9,24.4
		.talk Ghostly Pandaren Fisherman##64004 |tip This NPC is a rare spawn, so you may need to wait a while.
		.' Tell him, "Sure, I'll take one."
		..collect Ancient Pandaren Fishing Charm##85973
		|next "menu"
//WEATHER-BEATEN JOURNAL
	step
	label "weatherjournal"
		map Wetlands
		path	63.6,75.7	60.4,70.4	60.6,59.6
		path	63.8,55.1	65.8,58.8	65.5,66.7
		path	67.3,73.0
		.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
		.' Use your Fishing skill to fish in _Schooner Wreckage Pools_ along this path. |cast Fishing##131474
		.' Open any _Watertight Trunks_ you fish up. |use Watertight Trunk##21113
		..collect Weather-Beaten Journal##34109
		|next "menu"
//SPUN TRUESILVER FISHING LINE
	step
	label "truefish"
		'You must complete the Fishing Daily quests in Terokkar Forest to obtain this item.
		.' Click here to do the Dalaran Daily Quests. |next "terofish" |confirm
		.' Click here to go back to the main menu. |confirm |next "menu"
	step
	label "terofish"
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.accept Crocolisks in the City##11665 |or
		.accept Bait Bandits##11666 |or
		.accept Felblood Fillet##11669 |or
		.accept The One That Got Away##11667 |or
		.accept Shrimpin' Ain't Easy##11668 |or
	step
		goto Stormwind City,54.9,69.7
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		..get Baby Crocolisk##34864 |q 11665/1
		only if havequest(11665)
	step
		goto Terokkar Forest,51.8,37.2
		.' Fish in the river here |cast Fishing##7620
		..get Blackfin Darter##34865 |q 11666/1
		only if havequest(11666)
	step
		goto Nagrand,37.4,47.1
		.' Use your fishing ability to fish in the lake. |cast Fishing##7620
		..get World's Largest Mudfish##34868 |q 11667/1
		only if havequest(11667)
	step
		goto Zangarmarsh,77.9,79.7
		.' Fish from the Lake here |cast Fishing##7620
		.'Click the Bloated Barbed Gill Trout in your bags|use Bloated Barbed Gill Trout##35313
		..get 10 Giant Freshwater Shrimp##34866 |q 11668/1
		only if havequest(11668)
	step
		goto Shadowmoon Valley,18.9,22.2
		.' Use your fishing ability in the green lava. |cast Fishing##7620
		..get Monstrous Felblood Snapper |q 11669/1
		only if havequest(11669)
	step
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.turnin Crocolisks in the City##11665 |or
		.turnin Bait Bandits##11666 |or
		.turnin Felblood Fillet##11669 |or
		.turnin The One That Got Away##11667 |or
		.turnin Shrimpin' Ain't Easy##11668 |or
		|next "use2"
	step
	label "use2"
		'Open the Bag of Fishing Treasures in your bags |use Bag of Fishing Treasures##46007
		.collect Spun Truesilver Fishing Line |next "menu"
		.' Click here to go to the beginning of this daily guide. |next "truefish" |confirm
//WEATHER-BEATEN FISHING HAT
	step
	label "weatherhat"
		'You must complete the Fishing Daily quests in Orgrimmar, Terokkar Forest, or Dalaran to obtain this item.
		.' Click here to do the Orgrimmar Daily Quests. |next "orghat" |confirm
		.' Click here to do the Dalaran Daily Quests. |next "dalhat" |confirm
		.' Click here to do the Terokkar Daily Quests. |next "terohat" |confirm
		.' Click here to return to the main menu |confirm |next "menu"
	step
	label "dalhat"
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..accept Blood Is Thicker##13833 |or
		..accept Dangerously Delicious##13834 |or
		..accept Jewel Of The Sewers##13832 |or
		..accept Disarmed!##13836 |or
		..accept The Ghostfish##13830 |or
	step
		goto Borean Tundra,54.6,41.8
		.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
		.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
		only if havequest (13833)
	step
		goto 53.7,42.9
		.' Walk into the water here to create a pool of blood
		.' Fish in the pool of blood
		.get 5 Bloodtooth Frenzy |q 13833/1
		only if havequest (13833)
	step
		goto Wintergrasp,79.9,41.8
		.' Fish in this big lake
		.get 10 Terrorfish |q 13834/1
		only if havequest (13834)
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto 44.4,66.2
		.' Fish in the water in the Dalaran sewers
		.get 1 Corroded Jewelry |q 13832/1
		only if havequest (13832)
	step
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto Dalaran,64.8,60.8
		.' Stand on the this circular platform and fish in the water here
		.collect Bloated Slippery Eel##45328|n
		.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
		.get 1 Severed Arm |q 13836/1
		only if havequest (13836)
	step
		goto Sholazar Basin,49.3,61.8
		.' Fish in the water here
		.collect 1 Phantom Ghostfish##45902|n
		.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
		.' Discover the Ghostfish mystery |q 13830/1
		only if havequest (13830)
	step
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..turnin Blood Is Thicker##13833
		..turnin Dangerously Delicious##13834
		..turnin Jewel Of The Sewers##13832
		..turnin The Ghostfish##13830
		|only if havequest(13833) or havequest(13834) or havequest(13832) or havequest(13830)
		|next "usetreas"
	step
		goto Dalaran,36.6,37.3
		.talk Olisarra the Kind##28706
		..turnin Disarmed!##13836
		(only if havequest(13836)
		|next "usetreas"
	step
	label "usetreas"
		|use Bag of Fishing Treasures##46007
		.collect 1 Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "weatherhat" |confirm
	step
	label "orghat"
		goto Orgrimmar,65.7,41.1
		.talk Razgar##43239
		..' You will only be able to complete 1 of the following quests per day
		..accept A Furious Catch##26588 |or
		..accept A Golden Opportunity##26572 |or
		..accept A Staggering Effort##26557 |or
		..accept Clammy Hands##26543 |or
		..accept No Dumping Allowed##26556 |or
	step
		goto Durotar,37.4,16.8
		.' Fish in the river in this spot
		.get Giant Furious Pike |q 26588/1 |tip This fish can only be caught in Durotar, so make sure you are standing and fishing in Durotar.
	step
		goto 42.8,24.0
		.' Use Razgar's Fillet Knife on a Drowned Thunder Lizard |use Razgar's Fillet Knife##58955 |tip They look like dead dinosaurs underwater around this area.
		.collect Drowned Thunder Lizard Tail##58958 |n
		.' Use your Drowned Thunder Lizard Tail next to Golden Stonefish |use Drowned Thunder Lizard Tail##58958 |tip They look like big yellow fish underwater around this area.
		.get 3 Golden Stonefish |q 26572/1
	step
		goto 57.2,9.5
		.' Click Monstrous Clams |tip They look like huge white clams underwater around this area.
		.get 10 Monstrous Clam Meat |q 26543/1	
	step
		goto Azshara,27.6,74.5
		.from Weakened Mosshoof Stag##35096+
		.collect 1 Stag Eye##58949 |q 26557
	step
		 goto Orgrimmar,46.2,46.5
		.' Use your Stag Eye |use Stag Eye##58949
		.' Fish in the water off the dock in this spot
		.get Sandy Carp |q 26557/1
	step
		goto 38.5,80.1
		.' Fish in the water in this spot
		.get 6 Toxic Puddlefish |q 26556/1
	step
		goto 65.7,41.1
		.talk Razgar##43239
		..' You will only be able to complete 1 of the following quests per day
		..turnin A Furious Catch##26588
		..turnin A Golden Opportunity##26572
		..turnin A Staggering Effort##26557
		..turnin Clammy Hands##26543
		..turnin No Dumping Allowed##26556
	step
		|use Bag of Shiny Things##67414
		.collect Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "weatherhat" |confirm
	step
	label "terohat"
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.accept Crocolisks in the City##11665 |or
		.accept Bait Bandits##11666 |or
		.accept Felblood Fillet##11669 |or
		.accept The One That Got Away##11667 |or
		.accept Shrimpin' Ain't Easy##11668 |or
	step
		goto Orgrimmar 66.6,42.1
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		..get Baby Crocolisk##34864 |q 11665/1
		only if havequest(11665)
	step
		goto Terokkar Forest,51.8,37.2
		.' Fish in the river here |cast Fishing##7620
		..get Blackfin Darter##34865 |q 11666/1
		only if havequest(11666)
	step
		goto Nagrand,37.4,47.1
		.' Use your fishing ability to fish in the lake. |cast Fishing##7620
		..get World's Largest Mudfish##34868 |q 11667/1
		only if havequest(11667)
	step
		goto Zangarmarsh,77.9,79.7
		.' Fish from the Lake here |cast Fishing##7620
		.'Click the Bloated Barbed Gill Trout in your bags|use Bloated Barbed Gill Trout##35313
		..get 10 Giant Freshwater Shrimp##34866 |q 11668/1
		only if havequest(11668)
	step
		goto Shadowmoon Valley,18.9,22.2
		.' Use your fishing ability in the green lava. |cast Fishing##7620
		..get Monstrous Felblood Snapper |q 11669/1
		only if havequest(11669)
	step
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to turn in 1 of 5 dailies per day.
		.turnin Crocolisks in the City##11665 |or |next "croco"
		.turnin Bait Bandits##11666 |or |next "notcroc"
		.turnin Felblood Fillet##11669 |or |next "notcroc"
		.turnin The One That Got Away##11667 |or |next "notcroc"
		.turnin Shrimpin' Ain't Easy##11668 |or |next "notcroc"
	step
	label "notcroc"
		|use Bag of Fishing Treasures##34863
		.collect 1 Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "weatherhat" |confirm
	step
	label "croco"
		|use Bag of Fishing Treasures##35348
		.collect 1 Weather-Beaten Fishing Hat##33820 |next "menu"
		.' Click here to go to the beginning of this guide. |next "weatherhat" |confirm
]])

ZygorGuidesViewer:RegisterInclude("Bags_Collect_Fishing_Alliance",[[
//ROUTER
//OTHERWORLDLY BAG
	step
	label "otherworldly"
		#include "auctioneer"
		..buy 1 Otherworldly Bag##54445 |next "menu"
		.' Click here if you wish to make this bag yourself. |confirm |next "auctionother" |tip This bag will require _Tailoring_ to create. |only if skill("Tailoring")>=480
	step
	label "auctionother"
		#include "auctioneer"
		..buy 9 Bolt of Embersilk Cloth##53643
		..buy 8 Hypnotic Dust##52555
		..buy 4 Greater Cosmic Essence##34055
		..buy 1 Dream Shard##34052
		|next "makeother"
		.' Click here if you wish to farm the _Bolts of Embersilk Cloth_ yourself. |confirm |next "embersilkother"
		.' Click here if you wish to farm the _Enchanting Materials_ yourself. |confirm |next "enchmatsother"
	step
	label "embersilkother"
		map Deepholm/0
		path loop off
		path	68.0,25.5	68.9,24.7	70.6,24.7
		path	72.6,26.9	73.1,28.5	74.6,27.7
		.from Verlok Pillartumbler##43513+
		..collect 45 Embersilk Cloth##53010
		|next "auctionother"
	step
	label "enchantmatsother"
		goto The Vortex Pinnacle 54.12,16.81
		'Run through the Vortex Pinnacle dungeon, killing all mobs along the way.
		'Disenchant any uncommon quality (green) armor and weapons with an item level of 272-305 and 305-333.|cast Disenchant##13262
		.collect 8 Hypnotic Dust##52555
	step
		goto Halls of Lightning 7.38,53.81
		'Run through the Halls of Lightning dungeon, killing all mobs along the way.
		'Disenchant any uncommon quality (green) armor and weapons with an item level of 130-151. |cast Disenchant##13262
		.collect 4 Greater Cosmic Essence##34055
		'Disenchant any uncommon quality (green) armor and weapons with an item level of 130-151. |cast Disenchant##13262
		.collect 1 Dream Shard##34052
		|next "auctionother"
	step
	label "makeother"
		#include "trainer_Tailoring"
		.learn Otherworldly Bag##75265
	step
		.create 1 Otherworldly Bag##75265,Tailoring,1 total
		|next "menu"
//MYSTERIOUS BAG
	step
	label "mysterybag"
		#include "auctioneer"
		..buy 1 Mysterious Bag##41598
		.' Click here if you wish to make this bag yourself. |confirm |next "auctionmystery" |tip This bag will require _Tailoring_ to create. |only if skill("Tailoring")>=440
	step
	label "auctionmystery"
		#include "auctioneer"
		..buy 4 Spellweave##41595
		..buy 2 Moonshroud##41594
]])