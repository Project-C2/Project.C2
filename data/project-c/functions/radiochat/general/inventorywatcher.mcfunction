
#タブに関する処理

tag @s add selectingTab1Item
tag @s add selectingTab2Item
tag @s add selectingTab3Item
tag @s add selectingTab4Item
tag @s add selectingTab5Item
tag @s add selectingTab6Item
tag @s add selectingTab7Item
tag @s add selectingTab8Item
tag @s add selectingTab9Item

tag @s[nbt={Inventory:[{Slot:9b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"全体1\"}",Lore:["{\"text\":\"汎用\"}"]}}}]}] remove selectingTab1Item
tag @s[nbt={Inventory:[{Slot:10b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"全体2\"}",Lore:["{\"text\":\"試合前\"}"]}}}]}] remove selectingTab2Item
tag @s[nbt={Inventory:[{Slot:11b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"全体3\"}",Lore:["{\"text\":\"試合中\"}"]}}}]}] remove selectingTab3Item
tag @s[nbt={Inventory:[{Slot:12b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"チーム1\"}",Lore:["{\"text\":\"汎用\"}"]}}}]}] remove selectingTab4Item
tag @s[nbt={Inventory:[{Slot:13b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"チーム2\"}",Lore:["{\"text\":\"戦略\"}"]}}}]}] remove selectingTab5Item
tag @s[nbt={Inventory:[{Slot:14b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"チーム3\"}",Lore:["{\"text\":\"試合前\"}"]}}}]}] remove selectingTab6Item
tag @s[nbt={Inventory:[{Slot:15b,id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"チーム4\"}",Lore:["{\"text\":\"試合中\"}"]}}}]}] remove selectingTab7Item
tag @s[nbt={Inventory:[{Slot:16b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{display:{Name:"{\"text\":\"その他\"}",Lore:["{\"text\":\"ガイジ\"}"]}}}]}] remove selectingTab8Item
tag @s[nbt={Inventory:[{Slot:17b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{display:{Name:"{\"text\":\"その他2\"}",Lore:["{\"text\":\"ガイジ2\"}"]}}}]}] remove selectingTab9Item

execute if entity @s[tag=selectingTab1Item] run function project-c:radiochat/general/tab1
execute if entity @s[tag=selectingTab2Item] run function project-c:radiochat/general/tab2
execute if entity @s[tag=selectingTab3Item] run function project-c:radiochat/general/tab3
execute if entity @s[tag=selectingTab4Item] run function project-c:radiochat/general/tab4
execute if entity @s[tag=selectingTab5Item] run function project-c:radiochat/general/tab5
execute if entity @s[tag=selectingTab6Item] run function project-c:radiochat/general/tab6
execute if entity @s[tag=selectingTab7Item] run function project-c:radiochat/general/tab7
execute if entity @s[tag=selectingTab8Item] run function project-c:radiochat/general/tab8
execute if entity @s[tag=selectingTab9Item] run function project-c:radiochat/general/tab9



#=========================================================================================================================================================
#タブ1に属するチャットの処理

tag @s[tag=isTab1Selected] add havingChat1-1Item
tag @s[tag=isTab1Selected] add havingChat1-2Item
tag @s[tag=isTab1Selected] add havingChat1-3Item
tag @s[tag=isTab1Selected] add havingChat1-4Item
tag @s[tag=isTab1Selected] add havingChat1-5Item
tag @s[tag=isTab1Selected] add havingChat1-6Item
tag @s[tag=isTab1Selected] add havingChat1-7Item
tag @s[tag=isTab1Selected] add havingChat1-8Item
tag @s[tag=isTab1Selected] add havingChat1-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_13",Count:1b,tag:{display:{Name:"{\"text\":\"感謝する\"}"}}}]}] remove havingChat1-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_13",Count:1b,tag:{display:{Name:"{\"text\":\"すまない\"}"}}}]}] remove havingChat1-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_13",Count:1b,tag:{display:{Name:"{\"text\":\"了解した\"}"}}}]}] remove havingChat1-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_13",Count:1b,tag:{display:{Name:"{\"text\":\"任せた\"}"}}}]}] remove havingChat1-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_13",Count:1b,tag:{display:{Name:"{\"text\":\"ダメだ\"}"}}}]}] remove havingChat1-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_13",Count:1b,tag:{display:{Name:"{\"text\":\"よろしく頼む\"}"}}}]}] remove havingChat1-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_13",Count:1b,tag:{display:{Name:"{\"text\":\"やったぜ。\"}"}}}]}] remove havingChat1-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_13",Count:1b,tag:{display:{Name:"{\"text\":\"よくやった\"}"}}}]}] remove havingChat1-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_13",Count:1b,tag:{display:{Name:"{\"text\":\"グッジョブ\"}"}}}]}] remove havingChat1-9Item

execute if entity @s[tag=havingChat1-1Item] run function project-c:radiochat/tab1/chat1
execute if entity @s[tag=havingChat1-2Item] run function project-c:radiochat/tab1/chat2
execute if entity @s[tag=havingChat1-3Item] run function project-c:radiochat/tab1/chat3
execute if entity @s[tag=havingChat1-4Item] run function project-c:radiochat/tab1/chat4
execute if entity @s[tag=havingChat1-5Item] run function project-c:radiochat/tab1/chat5
execute if entity @s[tag=havingChat1-6Item] run function project-c:radiochat/tab1/chat6
execute if entity @s[tag=havingChat1-7Item] run function project-c:radiochat/tab1/chat7
execute if entity @s[tag=havingChat1-8Item] run function project-c:radiochat/tab1/chat8
execute if entity @s[tag=havingChat1-9Item] run function project-c:radiochat/tab1/chat9

#=========================================================================================================================================================
#タブ2に属するチャットの処理

tag @s[tag=isTab2Selected] add havingChat2-1Item
tag @s[tag=isTab2Selected] add havingChat2-2Item
tag @s[tag=isTab2Selected] add havingChat2-3Item
tag @s[tag=isTab2Selected] add havingChat2-4Item
tag @s[tag=isTab2Selected] add havingChat2-5Item
tag @s[tag=isTab2Selected] add havingChat2-6Item
tag @s[tag=isTab2Selected] add havingChat2-7Item
tag @s[tag=isTab2Selected] add havingChat2-8Item
tag @s[tag=isTab2Selected] add havingChat2-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_cat",Count:1b,tag:{display:{Name:"{\"text\":\"ジョブをシャッフルするぞ\"}"}}}]}] remove havingChat2-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_cat",Count:1b,tag:{display:{Name:"{\"text\":\"試合始めるぞ\"}"}}}]}] remove havingChat2-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_cat",Count:1b,tag:{display:{Name:"{\"text\":\"ステージを変えよう\"}"}}}]}] remove havingChat2-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_cat",Count:1b,tag:{display:{Name:"{\"text\":\"次で落ちるぞ\"}"}}}]}] remove havingChat2-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_cat",Count:1b,tag:{display:{Name:"{\"text\":\"近距離職で行く\"}"}}}]}] remove havingChat2-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_cat",Count:1b,tag:{display:{Name:"{\"text\":\"遠距離職で行く\"}"}}}]}] remove havingChat2-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_cat",Count:1b,tag:{display:{Name:"{\"text\":\"支援職で行く\"}"}}}]}] remove havingChat2-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_cat",Count:1b,tag:{display:{Name:"{\"text\":\"慣れない職を使う\"}"}}}]}] remove havingChat2-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_cat",Count:1b,tag:{display:{Name:"{\"text\":\"お手柔らかに頼む\"}"}}}]}] remove havingChat2-9Item

execute if entity @s[tag=havingChat2-1Item] run function project-c:radiochat/tab2/chat1
execute if entity @s[tag=havingChat2-2Item] run function project-c:radiochat/tab2/chat2
execute if entity @s[tag=havingChat2-3Item] run function project-c:radiochat/tab2/chat3
execute if entity @s[tag=havingChat2-4Item] run function project-c:radiochat/tab2/chat4
execute if entity @s[tag=havingChat2-5Item] run function project-c:radiochat/tab2/chat5
execute if entity @s[tag=havingChat2-6Item] run function project-c:radiochat/tab2/chat6
execute if entity @s[tag=havingChat2-7Item] run function project-c:radiochat/tab2/chat7
execute if entity @s[tag=havingChat2-8Item] run function project-c:radiochat/tab2/chat8
execute if entity @s[tag=havingChat2-9Item] run function project-c:radiochat/tab2/chat9

#=========================================================================================================================================================
#タブ3に属するチャットの処理

tag @s[tag=isTab3Selected] add havingChat3-1Item
tag @s[tag=isTab3Selected] add havingChat3-2Item
tag @s[tag=isTab3Selected] add havingChat3-3Item
tag @s[tag=isTab3Selected] add havingChat3-4Item
tag @s[tag=isTab3Selected] add havingChat3-5Item
tag @s[tag=isTab3Selected] add havingChat3-6Item
tag @s[tag=isTab3Selected] add havingChat3-7Item
tag @s[tag=isTab3Selected] add havingChat3-8Item
tag @s[tag=isTab3Selected] add havingChat3-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"離席します\"}"}}}]}] remove havingChat3-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"ジョブの使い方がわからん\"}"}}}]}] remove havingChat3-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"バグった\"}"}}}]}] remove havingChat3-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"ラグがひどい\"}"}}}]}] remove havingChat3-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"迷った\"}"}}}]}] remove havingChat3-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"勝てる気がせん\"}"}}}]}] remove havingChat3-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"負ける気がせん\"}"}}}]}] remove havingChat3-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"死に過ぎた...\"}"}}}]}] remove havingChat3-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"今回は相性が良くないな\"}"}}}]}] remove havingChat3-9Item

execute if entity @s[tag=havingChat3-1Item] run function project-c:radiochat/tab3/chat1
execute if entity @s[tag=havingChat3-2Item] run function project-c:radiochat/tab3/chat2
execute if entity @s[tag=havingChat3-3Item] run function project-c:radiochat/tab3/chat3
execute if entity @s[tag=havingChat3-4Item] run function project-c:radiochat/tab3/chat4
execute if entity @s[tag=havingChat3-5Item] run function project-c:radiochat/tab3/chat5
execute if entity @s[tag=havingChat3-6Item] run function project-c:radiochat/tab3/chat6
execute if entity @s[tag=havingChat3-7Item] run function project-c:radiochat/tab3/chat7
execute if entity @s[tag=havingChat3-8Item] run function project-c:radiochat/tab3/chat8
execute if entity @s[tag=havingChat3-9Item] run function project-c:radiochat/tab3/chat9

#=========================================================================================================================================================
#タブ4に属するチャットの処理

tag @s[tag=isTab4Selected] add havingChat4-1Item
tag @s[tag=isTab4Selected] add havingChat4-2Item
tag @s[tag=isTab4Selected] add havingChat4-3Item
tag @s[tag=isTab4Selected] add havingChat4-4Item
tag @s[tag=isTab4Selected] add havingChat4-5Item
tag @s[tag=isTab4Selected] add havingChat4-6Item
tag @s[tag=isTab4Selected] add havingChat4-7Item
tag @s[tag=isTab4Selected] add havingChat4-8Item
tag @s[tag=isTab4Selected] add havingChat4-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"よろしく頼む\"}"}}}]}] remove havingChat4-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"感謝する\"}"}}}]}] remove havingChat4-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"すまない\"}"}}}]}] remove havingChat4-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"了解した\"}"}}}]}] remove havingChat4-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"任せた\"}"}}}]}] remove havingChat4-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"ダメだ\"}"}}}]}] remove havingChat4-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"やったぜ。\"}"}}}]}] remove havingChat4-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"よくやった\"}"}}}]}] remove havingChat4-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"グッジョブ\"}"}}}]}] remove havingChat4-9Item

execute if entity @s[tag=havingChat4-1Item] run function project-c:radiochat/tab4/chat1
execute if entity @s[tag=havingChat4-2Item] run function project-c:radiochat/tab4/chat2
execute if entity @s[tag=havingChat4-3Item] run function project-c:radiochat/tab4/chat3
execute if entity @s[tag=havingChat4-4Item] run function project-c:radiochat/tab4/chat4
execute if entity @s[tag=havingChat4-5Item] run function project-c:radiochat/tab4/chat5
execute if entity @s[tag=havingChat4-6Item] run function project-c:radiochat/tab4/chat6
execute if entity @s[tag=havingChat4-7Item] run function project-c:radiochat/tab4/chat7
execute if entity @s[tag=havingChat4-8Item] run function project-c:radiochat/tab4/chat8
execute if entity @s[tag=havingChat4-9Item] run function project-c:radiochat/tab4/chat9
#=========================================================================================================================================================
#タブ5に属するチャットの処理

tag @s[tag=isTab5Selected] add havingChat5-1Item
tag @s[tag=isTab5Selected] add havingChat5-2Item
tag @s[tag=isTab5Selected] add havingChat5-3Item
tag @s[tag=isTab5Selected] add havingChat5-4Item
tag @s[tag=isTab5Selected] add havingChat5-5Item
tag @s[tag=isTab5Selected] add havingChat5-6Item
tag @s[tag=isTab5Selected] add havingChat5-7Item
tag @s[tag=isTab5Selected] add havingChat5-8Item
tag @s[tag=isTab5Selected] add havingChat5-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"どんどん押していけ!!\"}"}}}]}] remove havingChat5-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"後ろに下がれ!!\"}"}}}]}] remove havingChat5-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"敵から離れて戦え!!\"}"}}}]}] remove havingChat5-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"後衛を叩け!!\"}"}}}]}] remove havingChat5-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"敵に特攻しろ!!\"}"}}}]}] remove havingChat5-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"HPに気を配れ!!\"}"}}}]}] remove havingChat5-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"右から行くぞ!!\"}"}}}]}] remove havingChat5-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"左から行くぞ!!\"}"}}}]}] remove havingChat5-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"中央から行くぞ!!\"}"}}}]}] remove havingChat5-9Item

execute if entity @s[tag=havingChat5-1Item] run function project-c:radiochat/tab5/chat1
execute if entity @s[tag=havingChat5-2Item] run function project-c:radiochat/tab5/chat2
execute if entity @s[tag=havingChat5-3Item] run function project-c:radiochat/tab5/chat3
execute if entity @s[tag=havingChat5-4Item] run function project-c:radiochat/tab5/chat4
execute if entity @s[tag=havingChat5-5Item] run function project-c:radiochat/tab5/chat5
execute if entity @s[tag=havingChat5-6Item] run function project-c:radiochat/tab5/chat6
execute if entity @s[tag=havingChat5-7Item] run function project-c:radiochat/tab5/chat7
execute if entity @s[tag=havingChat5-8Item] run function project-c:radiochat/tab5/chat8
execute if entity @s[tag=havingChat5-9Item] run function project-c:radiochat/tab5/chat9

#=========================================================================================================================================================
#タブ6に属するチャットの処理

tag @s[tag=isTab6Selected] add havingChat6-1Item
tag @s[tag=isTab6Selected] add havingChat6-2Item
tag @s[tag=isTab6Selected] add havingChat6-3Item
tag @s[tag=isTab6Selected] add havingChat6-4Item
tag @s[tag=isTab6Selected] add havingChat6-5Item
tag @s[tag=isTab6Selected] add havingChat6-6Item
tag @s[tag=isTab6Selected] add havingChat6-7Item
tag @s[tag=isTab6Selected] add havingChat6-8Item
tag @s[tag=isTab6Selected] add havingChat6-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_mall",Count:1b,tag:{display:{Name:"{\"text\":\"近距離職で行く\"}"}}}]}] remove havingChat6-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_mall",Count:1b,tag:{display:{Name:"{\"text\":\"遠距離職で行く\"}"}}}]}] remove havingChat6-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_mall",Count:1b,tag:{display:{Name:"{\"text\":\"支援職で行く\"}"}}}]}] remove havingChat6-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_mall",Count:1b,tag:{display:{Name:"{\"text\":\"慣れない職を使う\"}"}}}]}] remove havingChat6-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_mall",Count:1b,tag:{display:{Name:"{\"text\":\"右から行く\"}"}}}]}] remove havingChat6-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_mall",Count:1b,tag:{display:{Name:"{\"text\":\"左から行く\"}"}}}]}] remove havingChat6-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_mall",Count:1b,tag:{display:{Name:"{\"text\":\"中央から行く\"}"}}}]}] remove havingChat6-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_mall",Count:1b,tag:{display:{Name:"{\"text\":\"誰か支援職になってくれ\"}"}}}]}] remove havingChat6-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_mall",Count:1b,tag:{display:{Name:"{\"text\":\"誰かにくっついていく\"}"}}}]}] remove havingChat6-9Item

execute if entity @s[tag=havingChat6-1Item] run function project-c:radiochat/tab6/chat1
execute if entity @s[tag=havingChat6-2Item] run function project-c:radiochat/tab6/chat2
execute if entity @s[tag=havingChat6-3Item] run function project-c:radiochat/tab6/chat3
execute if entity @s[tag=havingChat6-4Item] run function project-c:radiochat/tab6/chat4
execute if entity @s[tag=havingChat6-5Item] run function project-c:radiochat/tab6/chat5
execute if entity @s[tag=havingChat6-6Item] run function project-c:radiochat/tab6/chat6
execute if entity @s[tag=havingChat6-7Item] run function project-c:radiochat/tab6/chat7
execute if entity @s[tag=havingChat6-8Item] run function project-c:radiochat/tab6/chat8
execute if entity @s[tag=havingChat6-9Item] run function project-c:radiochat/tab6/chat9

#=========================================================================================================================================================
#タブ7に属するチャットの処理

tag @s[tag=isTab7Selected] add havingChat7-1Item
tag @s[tag=isTab7Selected] add havingChat7-2Item
tag @s[tag=isTab7Selected] add havingChat7-3Item
tag @s[tag=isTab7Selected] add havingChat7-4Item
tag @s[tag=isTab7Selected] add havingChat7-5Item
tag @s[tag=isTab7Selected] add havingChat7-6Item
tag @s[tag=isTab7Selected] add havingChat7-7Item
tag @s[tag=isTab7Selected] add havingChat7-8Item
tag @s[tag=isTab7Selected] add havingChat7-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"攻撃に回る\"}"}}}]}] remove havingChat7-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"援護に回る\"}"}}}]}] remove havingChat7-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"支援に回る\"}"}}}]}] remove havingChat7-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"援護を頼む\"}"}}}]}] remove havingChat7-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"様子を見る\"}"}}}]}] remove havingChat7-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"回復頼む\"}"}}}]}] remove havingChat7-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"バフをかけてくれ\"}"}}}]}] remove havingChat7-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"デバフをかけてくれ\"}"}}}]}] remove havingChat7-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"自爆特攻するぞ\"}"}}}]}] remove havingChat7-9Item

execute if entity @s[tag=havingChat7-1Item] run function project-c:radiochat/tab7/chat1
execute if entity @s[tag=havingChat7-2Item] run function project-c:radiochat/tab7/chat2
execute if entity @s[tag=havingChat7-3Item] run function project-c:radiochat/tab7/chat3
execute if entity @s[tag=havingChat7-4Item] run function project-c:radiochat/tab7/chat4
execute if entity @s[tag=havingChat7-5Item] run function project-c:radiochat/tab7/chat5
execute if entity @s[tag=havingChat7-6Item] run function project-c:radiochat/tab7/chat6
execute if entity @s[tag=havingChat7-7Item] run function project-c:radiochat/tab7/chat7
execute if entity @s[tag=havingChat7-8Item] run function project-c:radiochat/tab7/chat8
execute if entity @s[tag=havingChat7-9Item] run function project-c:radiochat/tab7/chat9

#=========================================================================================================================================================
#タブ8に属するチャットの処理

tag @s[tag=isTab8Selected] add havingChat8-1Item
tag @s[tag=isTab8Selected] add havingChat8-2Item
tag @s[tag=isTab8Selected] add havingChat8-3Item
tag @s[tag=isTab8Selected] add havingChat8-4Item
tag @s[tag=isTab8Selected] add havingChat8-5Item
tag @s[tag=isTab8Selected] add havingChat8-6Item
tag @s[tag=isTab8Selected] add havingChat8-7Item
tag @s[tag=isTab8Selected] add havingChat8-8Item
tag @s[tag=isTab8Selected] add havingChat8-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"ガイジしたわ\"}"}}}]}] remove havingChat8-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"えぇ...\"}"}}}]}] remove havingChat8-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"ﾋﾟｬｰ\"}"}}}]}] remove havingChat8-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"ﾋｰ\"}"}}}]}] remove havingChat8-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"ﾌｧｰｰｰ\"}"}}}]}] remove havingChat8-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"ｱｯｰｰｰｰｰ\"}"}}}]}] remove havingChat8-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"やめちくり～\"}"}}}]}] remove havingChat8-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"ｱｰｲｷｿ\"}"}}}]}] remove havingChat8-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"ｸｸｸｸｸ\"}"}}}]}] remove havingChat8-9Item

execute if entity @s[tag=havingChat8-1Item] run function project-c:radiochat/tab8/chat1
execute if entity @s[tag=havingChat8-2Item] run function project-c:radiochat/tab8/chat2
execute if entity @s[tag=havingChat8-3Item] run function project-c:radiochat/tab8/chat3
execute if entity @s[tag=havingChat8-4Item] run function project-c:radiochat/tab8/chat4
execute if entity @s[tag=havingChat8-5Item] run function project-c:radiochat/tab8/chat5
execute if entity @s[tag=havingChat8-6Item] run function project-c:radiochat/tab8/chat6
execute if entity @s[tag=havingChat8-7Item] run function project-c:radiochat/tab8/chat7
execute if entity @s[tag=havingChat8-8Item] run function project-c:radiochat/tab8/chat8
execute if entity @s[tag=havingChat8-9Item] run function project-c:radiochat/tab8/chat9

# #=========================================================================================================================================================
# #タブ9に属するチャットの処理

tag @s[tag=isTab9Selected] add havingChat9-1Item
tag @s[tag=isTab9Selected] add havingChat9-2Item
tag @s[tag=isTab9Selected] add havingChat9-3Item
tag @s[tag=isTab9Selected] add havingChat9-4Item
tag @s[tag=isTab9Selected] add havingChat9-5Item
tag @s[tag=isTab9Selected] add havingChat9-6Item
tag @s[tag=isTab9Selected] add havingChat9-7Item
tag @s[tag=isTab9Selected] add havingChat9-8Item
tag @s[tag=isTab9Selected] add havingChat9-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_strad",Count:1b,tag:{display:{Name:"{\"text\":\"ｵｫ\"}"}}}]}] remove havingChat9-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_strad",Count:1b,tag:{display:{Name:"{\"text\":\"ガイジだわ\"}"}}}]}] remove havingChat9-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_strad",Count:1b,tag:{display:{Name:"{\"text\":\"勝てるのか？\"}"}}}]}] remove havingChat9-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_strad",Count:1b,tag:{display:{Name:"{\"text\":\"負けるのか？\"}"}}}]}] remove havingChat9-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_strad",Count:1b,tag:{display:{Name:"{\"text\":\"手ごわいので退却する\"}"}}}]}] remove havingChat9-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_strad",Count:1b,tag:{display:{Name:"{\"text\":\"楽勝だが退却する\"}"}}}]}] remove havingChat9-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_strad",Count:1b,tag:{display:{Name:"{\"text\":\"どう思う?\"}"}}}]}] remove havingChat9-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_strad",Count:1b,tag:{display:{Name:"{\"text\":\"それはできない!\"}"}}}]}] remove havingChat9-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_strad",Count:1b,tag:{display:{Name:"{\"text\":\"今のはMojangが悪い\"}"}}}]}] remove havingChat9-9Item

execute if entity @s[tag=havingChat9-1Item] run function project-c:radiochat/tab9/chat1
execute if entity @s[tag=havingChat9-2Item] run function project-c:radiochat/tab9/chat2
execute if entity @s[tag=havingChat9-3Item] run function project-c:radiochat/tab9/chat3
execute if entity @s[tag=havingChat9-4Item] run function project-c:radiochat/tab9/chat4
execute if entity @s[tag=havingChat9-5Item] run function project-c:radiochat/tab9/chat5
execute if entity @s[tag=havingChat9-6Item] run function project-c:radiochat/tab9/chat6
execute if entity @s[tag=havingChat9-7Item] run function project-c:radiochat/tab9/chat7
execute if entity @s[tag=havingChat9-8Item] run function project-c:radiochat/tab9/chat8
execute if entity @s[tag=havingChat9-9Item] run function project-c:radiochat/tab9/chat9

# #=========================================================================================================================================================

#advancement初期化
advancement revoke @s only project-c:radiochat/radiochat