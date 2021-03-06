local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ScenarioHMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Unga Ingoo",[[
dungeon 882
description This guide will walk you through the Unga Ingoo scenario.
achicveid 7249
author support@zygorguides.com
step
goto Krasarang Wilds 51.5,77.3
.talk 65289
..accept 31058
step
goto Unga Ingoo 51.8,86.3 |n
.talk 62467
.' Let's get going!
.' Escort Brewmaster Bo to [50.1,61.9]
scenariogoal 19210
step
'Leave one party member behind to defend Brewmaster Bo from the oncoming Hozen, if you do not then the Hozen will steal your brew and run off with it. Defenders should use _Inactive Beach Bombs_ and the _Brew Defender_ cannon to help them fight off Hozen.
'The other two party members should run around the island and click on _Unga Mugs_ and _Unga Kegs_ you find scattered throughout the island.
.' Return to the cauldron every time you have 30 stacks of Brew.
scenariogoal 21304
step
goto 49.9,56.3
.from Captain Ook##62465 |only if not havequest(31058) |tip He periodically casts Gonna Ook Ya, move from the red circle. When he gets weak a Scurvy-Curing Orange will spawn, click it to pick it up and run it away from Captain Ook.
.kill Captain Ook##62465 |q 31058/1 |only if havequest(31058) |tip He periodically casts Gonna Ook Ya, move from the red circle. When he gets weak a Scurvy-Curing Orange will spawn, click it to pick it up and run it away from Captain Ook.
scenariogoal 20696
step
goto 50.2,62.0
.talk 62491
..turnin 31058
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Arena of Annihilation",[[
dungeon 899
description This guide will walk you through the Arena of Annihilation scenario.
achieveid 7271
author support@zygorguides.com
step
goto Proving Grounds 46.6,16.1
.talk 63315
..accept 31207
step
goto 48.9,17.1
.click Tiger Temple Gong
scenariogoal 20810
.from Scar-Shell##63311 |tip Crushing Bite reduces the armor of whomever it hits by 50%. Stone Spin is a whirlwind type attack. Immediately after it finishes, Scar-Shell will gain the Dizzy debuff, increses his damage taken by 50% for a short time.
scenariogoal 19336
step
scenariostage 1
step
goto 48.9,17.1
.click Tiger Temple Gong
scenariogoal 20810
.from Jol'Grum##63312 |tip Whoever is holding the attention of Jol'Grum should remain still. The tank moving causes his rage bar to build. If the bar reaches 100, he will become Angry. This is a light enrage. He will cast Headbutt on the tank which knocks them back. He will also jump to the middle and use Smash, knocking all players back.
scenariogoal 19337
step
scenariostage 2
step
goto 48.9,17.1
.click Tiger Temple Gong
scenariogoal 20810
.from Little Liuyang##63313 |tip Liuyang will constantly shoot off Fireballs and paths of fire. Avoid stand in fire. At around 40%, Firewall will be cast. Run counter-clockwise while killing the Flmecoaxig Spirits. Kill them will cause a section of the firewall to vanish. There are three of them.
.from Flamecoaxing Spirit##63539
scenariogoal 21922
step
scenariostage 3
step
goto 48.9,17.1
.click Tiger Temple Gong
scenariogoal 20810
.from Chagan Firehoof##63318 |tip He will use Trailblaze on a random player, this leaves fire on the ground. Hammertime does damage to whomever is tanking.
.from Batu##63872 |tip There is no real benefit to killing Batu, just ignore him until and kill Chagan.
scenariogoal 19341
step
scenariostage 4
step
goto 48.9,17.1
.click Tiger Temple Gong
scenariogoal 20810
.from Satay Byu##64281 |tip Satay Byu will apply Slowing Poison with his basic attacks. If Slowing Poison reaches 20 stacks it will root the target in place. Speed of the Jinja will rapidly strike in front of Satay, run away from this.
scenariogoal 20587
step
scenariostage 5
step
goto 50.1,18.1
.talk 63314
..turnin 31207
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm",[[
dungeon 878
description This guide will walk you through the A Brewing Storm scenario.
achieveid 7252,8310
author support@zygorguides.com
step
goto The Jade Forest 36.9,30.2
.talk 59569
..accept 30567
step
goto A Brewing Storm 55.3,45.0
.talk 58740
.' Let's get this lightning party started, Blanche.
.' Defend the Brewing Process |tip Click on the Brewkegs when they light on fire to extinguish them. Avoid standing near the lightning rods when they light up.
.clicknpc Brewkeg##58916
scenariogoal 22197
step
scenariostage 1
step
goto 55.3,44.9 |n
.talk 58740 |tip She patrols around the area.
.' Take Blanche to [49.9,32.6]
scenariogoal 19564
step
scenariostage 2
step
goto 30.2,68.3
.talk 58740
.' Let's kill some lizards, Blanche!
.from Borokhula the Destroyer##58739 |tip Borokhula will start to cast Swamp Smash in front of him, do not stand in it. When he begins to channel Earth Shattering, watch the ground and avoid the red circles, large spikes will come out of them. Designate one party member to add control. The adds can be quickly dispatched using the Boomer Brew Strike button on the screen, target an add and click it twice to instantly kill it.
scenariogoal 19565
step
scenariostage 3
step
goto A Brewing Storm 30.3,62.3
.talk 58740
..turnin 30567
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Brewmoon Festival",[[
dungeon 884
description This guide will walk you through the Brewmoon Festival scenario.
achieveid 6923
author support@zygorguides.com
step
goto The Veiled Stair 51.9,43.7
.talk 63367
..accept 31611
step
goto Brewmoon Festival 36.2,68.8
.from Den Mother Moof##63518 |tip burrows, summons adds, twirlwind
scenariogoal 19524
step
goto 41.9,52.1
.talk 62793
.' Can you help me get out on the water, Tart?
.from Li Te##63520 |tip Li Te will periodically be covered in a water shield, when that happens kite it over water spouts before they burst.
scenariogoal 19525
step
goto 56.2,94.4
.from Karsar the Bloodletter##63529 |tip Karsar the Bloodletter has no aggro table, instead he has an ability called Taste for Blood. This ability causes the highest health party member to automatically have the highest threat.
scenariogoal 19526
step
.' Kickstart the brew.
scenariogoal 19716
step
scenariostage 1
step
goto Brewmoon Festival 43.4,74.3
'In Stages 2 and 3 Bataari will swarm the village from the southern cave, the eastern bridge, and the western gateway.
'If your party is strong you will be able to split up and put one person at each attack point. If not, stick together.
.from Bataari Outrunner##64165+
scenariogoal 19527
scenariogoal 19530
scenariogoal 19531
step
goto Brewmoon Festival 44.0,68.6
.talk 64017
scenariogoal 19529
step
scenariostage 2
step
goto Brewmoon Festival 42.1,66.6
'Stage 3 consists of three waves of different Bataari mobs and War Yetis. Only one War Yeti will spawn per wave and it can be at any of the three attack points.
.from Bataari Flamecaller##63526 +, Bataari Yaungol##63527+, Bataari War Yeti##64185+
scenariogoal 19523
step
scenariostage 3
step
goto 39.0,60.3
.from Warbringer Qobi##63528 |tip Kite him out of Oil Slicks, avoid fire, when he is weak click axe to do a powerful whilrwind
.click Qobi's Axe
scenariogoal 19528
step
goto 42.7,79.1
.talk 64901
..turnin 31611
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Theramore's Fall",[[
dungeon 906
achieveid 7523
step
goto 851 66.4,64.3
.clicknpc Powder Barrel##58665
|confirm
step
goto 851 61.8,68.8
.clicknpc Powder Barrel##58665
|confirm
step
goto 851 73.4,62.2
.from Lieutenant Granders##58936
.clicknpc Powder Barrel##58665
|confirm
step
goto 851 73.1,76.6
.from Squallshaper Lanara##58948
.clicknpc Powder Barrel##58665
|confirm
step
goto 851 58.6,73.8
.from Captain Brellinger##59087
.clicknpc Powder Barrel##58665
|confirm
step
goto 851 50.3,86.2
.from Captain Dashing##59089
.clicknpc Powder Barrel##58665
|confirm
step
goto 851 58.1,58.1
.talk 58765
.' Tell him you rigged the boats to blow.
.' Defeat the wave of _Theramore Footmen_ that run to you.
|modelnpc 58612
|confirm
step
goto 851 50.3,46.7
.from Baldruc##58777
|confirm
step
goto 851 34.6,41.0
.from Big Bessa##58787
|confirm
step
goto 851 32.7,37.1
.clicknpc Unmanned Tank##58788
|confirm
step
goto 851 30.0,38.4
.clicknpc Unmanned Tank##58788
|confirm
step
goto 851 30.2,45.4
.clicknpc Unmanned Tank##58788
|confirm
step
goto 851 52.7,33.8 |n
.' Enter the Keep here |goto 851 52.7,33.8 |noway |c
step
goto 851 53.9,37.2
.from Hedric Evencane##58840
..collect Arcane Shackles Key##79261
step
.' Go to the basement of the keep to [54.5,36.6] |goto 54.5,36.6
.talk 58816
.' Unshackle him.
|confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings",[[
dungeon 900
description This guide will walk you through the Crypt of Forgotten Kings scenarios.
achieveid 7522,8311
step
goto Crypt of Forgotten Kings/1 44.5,39.9
.' Fight your way to
.from Jin Ironfist##61814
.' He will randomly jump to players in your group.
.scenariogoal 19223
'|modelnpc 61610
'|modelnpc 65304
'|modelnpc 61709
step
.scenariostage 1
step
goto 46.9,58.3
.from Spawn of Hate##61709
.' Fight here until the Pool of Life is cleansed
.scenariogoal 20882
'|modelnpc 61709
step
.scenariostage 2
step
goto Crypt of Forgotten Kings/1 63.8,81.6
.click Treasure Urn
.from Quilen Statue##61565+
|confirm
step
.' Go down the steps here. |goto 69.7,80.1 <10 |c
step
goto 64.1,80.5 |n
.' Go down the steps here. |goto Crypt of Forgotten Kings/2|noway|c
.scenariogoal 21041
step
.scenariostage 3
step
goto Crypt of Forgotten Kings/2 48.7,38.7
.' You will need to fight your way around the room to the _Abomination of Anger_.
.from Abomination of Anger##61707
.scenariogoal 19225
.' During the fight, he will use an ability called _Deathforce_ which will pull you to him. Run out of the red circle that surrounds him as fast as possibly to avoid instant death.
.' He will create red clouds on the ground that move around during the fight which should also be avoided.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Greenstone Village",[[
dungeon 880
description This guide will walk you through the Greenstone Village scenario.
achieveid 7265
step
goto 880 56.6,63.5
.' Search for villagers around the area.
.' Save them by killing enemies around them.
.scenariogoal 19204
.scenariogoal 21336
.scenariogoal 19200
.scenariogoal 19201
.scenariogoal 19202
.scenariogoal 19203
'|modelnpc 61462
'|modelnpc 61350
'|modelnpc 61346
'|modelnpc 61343
'|modelnpc 61461
'|modelnpc 65271
step
scenariostage 1
step
goto 51.0,69.8
.from Beast of Jade##1236+, Jade Destroyer##62619+
.talk 61203
scenariogoal 19199
step
scenariostage 2
step
.' Run around the entire instance clicking on _Burgled Barrels_.
.' They will look like cogs on your mini map.
.' Bring them to [51.8,69.0]
scenariogoal 19229 6
step
scenariostage 3
step
goto 57.1,30.4
.talk 62989
scenariogoal 19264
step
goto 53.1,32.6
.talk 62988
.scenariogoal 1244
step
goto 54.7,25.0
.talk 62990
scenariogoal 19265
step
scenariostage 4
step
goto 52.4,23.5
.from Vengeful Hui##61156+
scenariogoal 19205
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\A Little Patience",[[
dungeon 912
description This guide will walk you through completing the A Little Patience scenario.
achieveid 7988
step
.' There will be two allies available
.talk 68057
'|goto 912 39.1,22.9
.talk 68599
'|goto 912 38.0,16.5
.talk 67883
'|goto 912 42.4,24.1
.talk 67569
'|goto 912 22.6,32.7
.talk 68240
'|goto 912 48.4,22.1
.click Tool Chest##10 |tip They will not be at Brownstone or Elder Adler.
..collect Laborer's Tool##92061
|confirm
step
.' When you initiate the instance, there will be random defense camps that spawn.
.' Refer to your map to locate them.
.' Occasionally, the defense camps will be attacked. Have 1 well geared player kill them all, or 2 of your group members go and kill them while the other continues gathering resources.
.from Riverblade Marauder##68775+, Kor'kron Paratrooper##67708+, Kor'kron Commando##67688, Kor'kron Assassin##67647+
.' _
.from Muckmaw Crocolisk##67922+, Krasari Stalker##68348+
..collect Meaty Haunch##92444 |tip This will speed up the construction progress temporarily. The buff stacks 3 times.
.' Set up 2 defenses.
scenariogoal 22517
step
scenariostage 1
step
goto 47.6,64.9
.from Commander Scargash##68474
scenariogoal 22461
step
scenariostage 2
step
.' Congratulations, you have completed _A Little Patience_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Assault on Zan'vess",[[
dungeon 883
description
achieveid 8016
step
goto Assault on Zan'vess 62.4,65.8
.talk 67275
.' Join the assault of Zan'vess
scenariogoal 22294
step
scenariostage 1
step
.from Sonic Control Tower##67279+
.' Destroy the Kyparite Quarry Sonic Control Towers.
scenariogoal 22295
step
.from Zan'thik Guardian##67710+, Sonic Control Tower##67279+
.' Kill the Zan'thik Guardians around the Sonic Control Towers to make them vulnerable.
.' Destroy the Whispering Stone Sonic Control Towers.
scenariogoal 22296
step
.from Scorpid Relocator##67784+, Sonic Control Tower##67279+
.' Kill the Scorpid Relocator
.' Destroy the Venomsting Pits Stone Sonic Control Towers.
scenariogoal 22297
step
scenariostage 2
step
goto 883 50.9,53.5
.from Team Leader Scooter##67810+, 7th Legion Infiltrator##67727+, 7th Legion Priest##67892+
|tip You can pull the group of enemies before Scooter without engaging him.
scenariogoal 22483
step
goto 883 41.0,54.7
.' Reach the Heart of Zan'vess
scenariogoal 22301
step
scenariostage 3
step
goto 883 38.2,55.8
.from Commander Tel'vrak##67879+
scenariogoal 22299
step
scenariostage 4
step
.' Congratulations, you've completed the _Assault on Zan'vess_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Domination Point",[[
dungeon 920
description
achieveid 8013
step
goto 920 27.8,26.8
.from Lion's Footman##67811+, Lion's Arcanist##69005+, Lion's Vindicator##69006+
|tip They will swarm in when you start tto assist Kromthar.
.talk 68998
.' Tell her to fight with you.
scenariogoal 22530
step
scenariostage 1
step
goto 920 43.3,32.0
.talk 68997
.' Ask him to fight with you.
scenariogoal 22531
step
scenariostage 2
step
goto 920 32.6,35.1
.from Stonebeak Berserker##67428+
.' South Attackers slain
scenariogoal 22547
step
goto 920 30.7,38.8
.from Lion's Footman##67811+, Stonebeak Foulmouth##69020+
.' South Attackers slain
scenariogoal 22548
step
goto 920 29.5,36.7
.from A.C.E. Saboteur##69009+, A.C.E. Beamgunner##69008+, A.C.E. Medic##69007+
.' West Attackers slain
scenariogoal 22549
step
scenariostage 3
step
goto 920 30.6,39.0
.talk 69002
.' Tell him you're here to help.
.' Warlord Bloodhilt located
scenariogoal 22558
step
.from Aroc Stonebeak##67431+, Stonebeak Berserker##67428+, Stonebeak Foulmouth##69020+
scenariogoal 22557
step
scenariostage 4
step
goto 920 28.5,35.0
.from A.C.E. Saboteur##69009+, A.C.E. Beamgunner##69008+
.talk 69001
.' Ask her to fight with you.
scenariogoal 22559
step
goto 920 31.8,31.4
.talk 69000
.' Ask her to fight with you.
scenariogoal 22560
step
goto 920 34.2,33.0
.talk 68999
.' Ask him to fight with you.
scenariogoal 22561
step
scenariostage 5
step
goto 920 31.9,36.1
.click Place Bombs Here!##68884
.' Bombs Placed
scenariogoal 22497
.click Place Boomsticks Here!##68885
.'Boomsticks placed
scenariogoal 22498
.click Place Rockets Here!##68886
.' Rockets placed
scenariogoal 22496
step
scenariostage 6
step
goto 920 30.6,38.9
.from Lion's Vindicator##69006+, Ironforge Cabalist##67762+, Lion's Footman##67811+
.' Wave One slain
scenariogoal 22562
.' Wave Two slain
scenariogoal 22563
.' Wave Three slain
scenariogoal 22564
.' Horde Commander slain
scenariogoal 22565
step
scenariostage 7
step
.' Congratulations, you have completed the _Domination Point_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Dagger in the Dark",[[
dungeon 914
description
achieveid 8010
step
goto Dagger in the Dark 56.1,75.2
.talk 67414
.' tell him you're ready.
scenariogoal 22282
step
scenariostage 1
step
.' Follow _Vol'Jin_ to [52.7,47.4].
scenariogoal 22281
step
scenariostage 2
step
.from Darkhatched Skulker##67257+, Darkhatched Shaman##67255+, Darkhatched Skinflayer##67258+
.' Defeat the Saurok Patrol
scenariogoal 22416
step
goto Dagger in the Dark 52.4,44.9
.from Darkhatched Lizard-Lord##67263+, Darkhatched Oracle##67256+, Darkhatched Shaman##67255+, Darkhatched Skulker##67257+
.' Defeat the Darkhatched Lizard-Lord
scenariogoal 22238
step
scenariostage 3
step
goto 51.9,43.4
.clicknpc Goblin Cannon##67694
.clicknpc The Spring Saurok-Slayer##67706
.' Use your abilities on the toolbar to defeat attackers.
.' Complete the boat ride.
scenariogoal 22284
step
scenariostage 4
step
goto 914/1 57.6,34.7
scenariogoal 22287
step
scenariostage 5
step
goto 914/1 55.9,31.5
.from Broodmaster Noshi##67264, Darkhatched Swarmling##67457+
|tip Use Death Beam when you get swarmed by Darkhatched Swarmlings.
scenariogoal 22239
step
scenariostage 6
step
goto 914/1 51.8,33.7
.click Broken Mogu Tablet##47136
.' Investigate the West Statue
scenariogoal 22288
step
goto 914/1 54.9,16.8
.click Broken Mogu Tablet##47136
.' Investigate the East Statue
scenariogoal 22289
step
scenariostage 7
step
goto 914/1 54.1,25.7
.from Rak'gor Bloodrazor##67266+, Kor'kron Bodyguard##67681+
scenariogoal 22240
step
scenariostage 8
step
.' Congratulations, you have completed the _Dagger in the Dark_ scenario!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Blood in the Snow",[[
dungeon 939
description
achieveid 8316,8312
step
goto 939 53.2,67.5
.talk 70801
scenariogoal 23249
scenariostage 1 |override
step
goto 939 49.9,60.9
.click Roasting Spit
scenariogoal 23260
scenariostage 2 |override
step
goto 939 44.9,76.4
.from Frostmane Berserker##70471+, Frostmane Flesh-Eater##70746+, Frostmane Prowler##70595+, Frostmane Headhunter##70473+, Frostmane Snowstalker##70463+
scenariogoal 23261
scenariostage 3 |override
step
goto 939 33.5,65.7
.from Bonechiller Barafu##70468
scenariogoal 23262
scenariostage 4 |override
step
goto 939 44.5,23.4
.from Farastu##70474+
scenariogoal 23263
scenariostage 5 |override
step
goto 939 47.8,48.9
.from Hekima the Wise##70544+ |scenariogoal 23264
|tip Make sure you kill any rage banners that spawn during this fight.
scenariogoal 23265
scenariostage 6 |override
step
.' Congratulations, you have completed the _Blood in the Snow_ scenario!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Dark Heart of Pandaria",[[
dungeon 937
description
achieveid 8317,8318
step
goto 937 53.2,67.5
.talk 70956
scenariogoal 23071
scenariostage 1 |override
step
goto 937/0 50.1,53.3
.from Earthborn Hatred##70822+
.from Fiery Anger##70824+
..' Kill these enemies until the tan bar disappears and Urtharges' shield breaks.
..from Urtharges the Destroyer##70959+
scenariogoal 23236
scenariostage 2 |override
step
'In the work zone area with the Elementals:
.' Run around collecting artifacts until you reach 50.
|tip They are boxes and items marked with a small beam of light. The gold ones are more valuable and can create a combo making the gathering go by faster.
scenariogoal 23253
scenariostage 3 |override
step
goto 937/0 43.0,70.6 |
.' Enter the mine here goto 937/0 43.0,70.6 (goto 937/1 74.3,14.4)
step
goto 937/1 46.3,35.2
.talk 71358
scenariogoal 23238
scenariostage 4 |override
step
goto 937/1 38.4,57.8
.from Echo of Y'Shaarj##71123+
scenariogoal 23251
scenariostage 5 |override
step
.' Congratulations, you have completed the _Dark Heart of Pandaria_ scenario!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\The Secrets of Ragefire",[[
dungeon 938
description
achieveid 8294,8327
step
goto The Secrets of Ragefire/1 63.9,50.7
.click Detonator
scenariogoal 23213
step
goto The Secrets of Ragefire/1 36.8,45.6
.from Kor'kron Dark Shaman##71245+, Kor'kron Shadowblade##71244+, Kor'kron Emberguard##70798+
.from Dark Shaman Xorenth##70683
scenariogoal 23216
scenariostage 1 |override
step
goto The Secrets of Ragefire/1 27.7,41.3
.click Pandaria Artifacts
scenariogoal 23256
step
goto The Secrets of Ragefire/1 30.6,52.7
.click Proto-Drake Eggs
scenariogoal 23254
step
goto The Secrets of Ragefire/1 40.1,59.2
.click Supply Crates
scenariogoal 23255
scenariostage 2 |override
step
goto The Secrets of Ragefire/1 39.7,60.1
.click Battery
.' Deliver the batteries to Grit and Ticker at [38.5,31.4] |tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
scenariogoal 23310
step
goto The Secrets of Ragefire/1 37.8,59.7
.click Pool Pony
.' Deliver the pool pony to Grit and Ticker at [38.5,31.4] |tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
scenariogoal 23308
step
goto The Secrets of Ragefire/1 29.7,52.0
.click Broken Proto-Drake Egg
.' Deliver the pool pony to Grit and Ticker at [38.5,31.4] |tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
scenariogoal 23309
step
goto The Secrets of Ragefire/1 27.2,42.8
.click Cannon Balls
.' Deliver the pool pony to Grit and Ticker at [38.5,31.4] |tip If you get hit by anything in combat, you will drop the item and have to go back and click it again.
scenariogoal 23307
scenariostage 3 |override
step
goto The Secrets of Ragefire/1 36.9,46.2
.from Kor'kron Dire Soldier##70665+, Kor'kron Dark Shaman##71245+, Kor'kron Emberguard##70798+, Kor'kron Emberguard##70798+
|tip You will fight these in several waves until Overseer Elaglo spawns.
.from Overseer Elaglo##71030+
|tip Be sure to avoid the pulsing areas on the ground from his stomp ability, as they do a lot of damage.
scenariogoal 23311
scenariostage 4 |override
step
.' Congratulations, you have completed the _Secrets of Ragefire_ scenario!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Pandaria Scenarios\\Battle on the High Seas",[[
dungeon 938
description
achieveid 8315,8366
step
goto Battle on the High Seas 38.8,22.9
.from Alliance Swashbuckler##69196+, Alliance Cannoneer##69194+
.from Lieutenant Parker##71326
scenariogoal 23334
scenariostage 1 |override
step
goto Battle on the High Seas 42.2,21.7 |n
.click Transport Cannon
.' Go to the next boat. |goto Battle on the High Seas 56.7,50.2 |noway |c
step
goto Battle on the High Seas 57.0,53.2
.click Rope Pile
.' Go to the next boat. |goto Battle on the High Seas 46.1,47.8 |noway |c
step
goto Battle on the High Seas 47.2,45.5
.from Lieutenant Fuseblast##71328
.clicknpc Barrel of Explosives##71106
|confirm
step
goto Battle on the High Seas 44.2,46.4
.from Lieutenant Fizzboil##71330 |tip He's down the stairs on the second level of the boat.
.clicknpc Barrel of Explosives##71106
|confirm
step
goto Battle on the High Seas 42.6,47.4
.from Lieutenant Boltblaster##71329 |tip He's on the bottom floor of the boat, near the back.
.clicknpc Barrel of Explosives##71106
scenariogoal 22261
scenariostage 2 |override
step
goto Battle on the High Seas 45.7,47.3
.clicknpc Plant Explosives##67394
.' You will also need to plant them at the following locations:
.' [44.8,45.3]
.' [47.0,45.6]
|tip After you plant the explosives, get ready to run to the top deck of the ship so you don't blow up with it!
scenariogoal 22262
step
goto 44.0,45.0
.click Rope Pile |tip It's on the top deck of the ship. You'll want to hurry, otherwise you'll blow up with the ship!
scenariogoal 22258
scenariostage 3 |override
step
goto Battle on the High Seas 55.1,52.5
.clicknpc Transport Cannon##71167
.' Go to the next boat. |goto Battle on the High Seas 59.3,84.3 |noway |c
step
goto Battle on the High Seas 59.1,83.9
.from Admiral Hodgson##71327
scenariogoal 23336
scenariostage 4 |override
step
.' Congratulations, you have completed the _Battle on the High Seas_ scenario!
]])
