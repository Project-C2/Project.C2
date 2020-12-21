#判定
#CT
scoreboard players set @s CT1 1000
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound block.enchantment_table.use master @a ~ ~ ~ 3 1
playsound item.armor.equip_iron master @a ~ ~ ~ 3 1.2

particle falling_dust oak_leaves ~ ~1.52 ~ 1 0.7 1 0.3 90 force @a
particle end_rod ~ ~1.52 ~ 1.2 0.7 1.2 0 20 force @a
clear @s arrow
clear @s tipped_arrow


execute as @s[scores={Mana=0..50}] at @s run particle end_rod ~ ~1.52 ~ 0 0 0 1 20 force @a
replaceitem entity @s[scores={Mana=0..50}] hotbar.4 minecraft:arrow{display:{Name:"{\"text\":\"普通の矢\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"至って普通の矢。魔法を使う必要もない。\"}"]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1b} 6

execute as @s[scores={Mana=50..100}] at @s run particle end_rod ~ ~1.52 ~ 0 0 0 1 50 force @a
replaceitem entity @s[scores={Mana=50..100}] hotbar.4 minecraft:tipped_arrow{HideFlags:32,display:{Name:"{\"text\":\"フロントウィング\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"微風を一つに集約した矢。\"}","{\"text\":\"弱そうに見えるがまず人に向けて撃つものではない。\"}"]},CustomPotionEffects:[{Id:2,Amplifier:0,Duration:60},{Id:7,Amplifier:0,Duration:1}],Potion:"minecraft:water",CustomPotionColor:14548943,Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1b} 5

execute as @s[scores={Mana=100..150}] at @s run particle end_rod ~ ~1.52 ~ 0 0 0 1 150 force @a
replaceitem entity @s[scores={Mana=100..150}] hotbar.4 minecraft:tipped_arrow{HideFlags:32,display:{Name:"{\"text\":\"エアーバレル\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"暴風を一つに集約した矢。周囲に嵐が満たされる。\"}"]},CustomPotionEffects:[{Id:2,Amplifier:1,Duration:60},{Id:7,Amplifier:0,Duration:1}],Potion:"minecraft:water",CustomPotionColor:2245915,Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1b} 4

execute as @s[scores={Mana=150..200}] at @s run particle end_rod ~ ~1.52 ~ 0 0 0 0.5 200 force @a
replaceitem entity @s[scores={Mana=150..200}] hotbar.4 minecraft:tipped_arrow{HideFlags:32,display:{Name:"{\"text\":\"サイクロン\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"強風を一つに集約した矢。\"}","{\"text\":\"少なくとも手に持つだけで不思議な感覚に満たされる。\"}"]},CustomPotionEffects:[{Id:2,Amplifier:2,Duration:60},{Id:7,Amplifier:0,Duration:1},{Id:18,Amplifier:0,Duration:100},{Id:19,Amplifier:4,Duration:60},{Id:25,Amplifier:3,Duration:3}],Potion:"minecraft:water",CustomPotionColor:4784090,Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1b} 3

execute as @s[scores={Mana=200..250}] at @s run particle cloud ~ ~1.52 ~ 0 0 0 0.5 150 force @a
replaceitem entity @s[scores={Mana=200..250}] hotbar.4 minecraft:tipped_arrow{HideFlags:32,display:{Name:"{\"text\":\"テンペスト\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"大いなる風を集約した矢。\"}","{\"text\":\"当たったものは無事では済まされない。\"}"]},CustomPotionEffects:[{Id:2,Amplifier:3,Duration:60},{Id:4,Amplifier:2,Duration:200},{Id:7,Amplifier:0,Duration:1},{Id:18,Amplifier:0,Duration:200},{Id:19,Amplifier:4,Duration:60},{Id:25,Amplifier:7,Duration:3}],Potion:"minecraft:water",CustomPotionColor:13959024,Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1b} 2

execute as @s[scores={Mana=250..299}] at @s run particle cloud ~ ~1.52 ~ 0 0 0 0.5 250 force @a

replaceitem entity @s[scores={Mana=250..299}] hotbar.4 minecraft:tipped_arrow{HideFlags:32,display:{Name:"{\"text\":\"グレイスオブミーミル\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"ほぼ全ての風を集約した矢。\"}","{\"text\":\"直撃すれば笑い話では済まないだろう。\"}"]},CustomPotionEffects:[{Id:1,Amplifier:0,Duration:0},{Id:2,Amplifier:3,Duration:40},{Id:3,Amplifier:0,Duration:0},{Id:4,Amplifier:2,Duration:200},{Id:5,Amplifier:0,Duration:0},{Id:7,Amplifier:1,Duration:1},{Id:8,Amplifier:0,Duration:0},{Id:11,Amplifier:0,Duration:0},{Id:12,Amplifier:0,Duration:0},{Id:14,Amplifier:0,Duration:0},{Id:18,Amplifier:0,Duration:200},{Id:19,Amplifier:4,Duration:60},{Id:25,Amplifier:7,Duration:3}],Potion:"minecraft:water",CustomPotionColor:2781746,Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1b}

execute as @s[scores={Mana=300..}] at @s run particle cloud ~ ~1.52 ~ 0 0 0 0.8 250 force @a
execute as @s[scores={Mana=300..}] at @s run particle end_rod ~ ~1.52 ~ 0 0 0 0.8 220 force @a
replaceitem entity @s[scores={Mana=300..}] hotbar.4 minecraft:tipped_arrow{HideFlags:32,display:{Name:"{\"text\":\"ダウンバースト\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"全ての風を集約した矢。\"}","{\"text\":\"仮に直撃すれば人としての役割を終えるだろう。\"}"]},CustomPotionEffects:[{Id:1,Amplifier:0,Duration:0},{Id:2,Amplifier:4,Duration:40},{Id:3,Amplifier:0,Duration:0},{Id:4,Amplifier:2,Duration:200},{Id:5,Amplifier:0,Duration:0},{Id:7,Amplifier:2,Duration:1},{Id:8,Amplifier:0,Duration:0},{Id:11,Amplifier:0,Duration:0},{Id:12,Amplifier:0,Duration:0},{Id:14,Amplifier:0,Duration:0},{Id:18,Amplifier:0,Duration:200},{Id:20,Amplifier:4,Duration:80},{Id:22,Amplifier:0,Duration:0},{Id:25,Amplifier:30,Duration:3}],Potion:"minecraft:water",CustomPotionColor:65374,Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1b} 1

scoreboard players set @s Mana 0

#リセット
tag @s remove SkillReady1