#実行者     -> jobNumber = 47
#実行地点   -> 実行者

scoreboard players reset @s usedSkill
scoreboard players set @s bow 5
scoreboard players operation @s[scores={damageDealt=1..}] damageDealt /= @s[scores={damageDealt=1..}] bow
scoreboard players operation @s[scores={damageTaken=1..}] damageDealt /= @s[scores={damageTaken=1..}] bow
scoreboard players operation @s[scores={damageDealt=1..}] Mana += @s[scores={damageDealt=1..}] damageDealt
scoreboard players operation @s[scores={damageTaken=1..}] Mana += @s[scores={damageTaken=1..}] damageTaken
scoreboard players set @s[scores={Mana=201..}] Mana 200

tag @s[tag=052-Sprint,nbt={OnGround:1b}] remove 052-Sprint
tag @s[scores={jump=1..,sprint=1..}] add 052-Sprint
scoreboard players set @s[tag=052-Sprint] sprint 10

replaceitem entity @s[scores={Mana=100..},tag=!052-100] hotbar.4 minecraft:iron_sword{display:{Name:"{\"text\":\"五輪剣\",\"bold\":\"true\",\"italic\":\"false\"}",Lore:["§e発動:攻撃","§f半径8m以内の敵に大ダメージ。","§c※自チームが発動した回数に応じて追加ダメージ","§cまた、奥義ゲージが200%に達していると二回発動する。"]}} 1
tag @s[scores={Mana=100..},tag=!052-100] add 052-100
clear @s[scores={Mana=..99},tag=052-100] minecraft:iron_sword{display:{Name:"{\"text\":\"五輪剣\",\"bold\":\"true\",\"italic\":\"false\"}",Lore:["§e発動:攻撃","§f半径8m以内の敵に大ダメージ。","§c※自チームが発動した回数に応じて追加ダメージ","§cまた、奥義ゲージが200%に達していると二回発動する。"]}} 1
tag @s[scores={Mana=..99},tag=052-100] remove 052-100
execute if entity @s[scores={damageDealt=1..,counter=1..}] run playsound minecraft:item.trident.return master @a ~ ~ ~ 2 0
execute if entity @s[scores={damageDealt=1..,counter=1..}] run playsound minecraft:item.trident.return master @a ~ ~ ~ 2 0
effect clear @s minecraft:jump_boost
effect give @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"無明斬\",\"color\":\"gray\",\"italic\":\"false\"}"}}}}] minecraft:jump_boost 1 4 true
title @s actionbar ["",{"text":"\u5965\u7fa9\u30b2\u30fc\u30b8:","bold":true,"underlined":true,"color":"blue"},{"score":{"name":"@s","objective":"Mana"},"bold":true,"underlined":true,"color":"dark_red"},{"text":"%","bold":true,"underlined":true,"color":"dark_red"}]
effect give @s[scores={CT1=1200..}] minecraft:strength 1 0
effect give @s[scores={CT1=1200..}] minecraft:speed 1 0
execute if entity @s[scores={CT1=1200..}] run particle minecraft:dust 0.7 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1
execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/052/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/052/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/052/replaceitem/3

effect give @s[tag=053-2-1] minecraft:jump_boost 1 2 true
execute if entity @s[tag=053-2-1,scores={fall=2..}] run function project-c:jobaction/052/skill/2/2
tag @s[tag=053-2-1,scores={fall=2..}] remove 053-2-1
tag @s[tag=053-2-1,nbt={OnGround:1b}] remove 053-2-1
execute if entity @s[nbt={HurtTime:9s},scores={CT1=1200..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/052/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"無明斬\",\"color\":\"gray\",\"italic\":\"false\"}"}}}},scores={CT2=1200..,jump=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/052/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"烈刀一閃\",\"color\":\"yellow\",\"italic\":\"false\"}"}}}},scores={CT2=1200..,sprint=1..,damageDealt=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/052/skill/3/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"五輪剣\",\"bold\":\"true\",\"italic\":\"false\"}"}}}},scores={Mana=100..,damageDealt=1..},gamemode=!spectator] run function project-c:jobaction/052/skill/4/0
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={fall=1..}] fall
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
scoreboard players reset @s[scores={damageTaken=1..}] damageTaken
scoreboard players reset @s[scores={jump=1..}] jump
scoreboard players reset @a[scores={sprint=1}] sprint
scoreboard players set @s[scores={sprint=2..}] sprint 1