#実行者     -> jobNumber = 018
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 魂"Soul"に使用
#counter_1    -> 
#counter_2    -> スキル2
#counter_3    -> スキル2の詠唱用
#counter_4    -> 
#counter_5    -> 
#subcounter   -> 魂"Soul"の自然減少に使用


scoreboard players reset @s usedSkill

execute if entity @s[scores={counter_3=1..}] run function project-c:jobaction/018/skill/2/1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/018/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/018/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/018/replaceitem/3

execute if entity @s[scores={damageDealt=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] run scoreboard players operation @s Mana += @s damageDealt
execute if entity @s[scores={damageDealt=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] at @s if entity @e[tag=018-seed,distance=..5,limit=1] at @e[type=vindicator,tag=018-seedVil,distance=..7,limit=1,sort=nearest,nbt={HurtTime:10s}] run function project-c:jobaction/018/skill/3/glow
execute if entity @s[scores={Mana=301..}] run scoreboard players set @s Mana 300
execute if entity @s[scores={Mana=1..}] run scoreboard players add @s subcounter 1
execute if entity @s[scores={Mana=1..,subcounter=20..}] run scoreboard players remove @s Mana 1
execute if entity @s[scores={subcounter=20..}] run scoreboard players set @s subcounter 0
title @s actionbar ["",{"text":"\u9b42","bold":true,"color":"green"},{"text":"\"","bold":true,"obfuscated":false,"color":"green"},{"text":"Soul","bold":true,"color":"green"},{"text":"\"","bold":true,"obfuscated":false,"color":"green"},{"score":{"name":"@s","objective":"Mana"},"bold":true,"color":"green"}]



execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"害鳥空爆の儀","italic":false}'}}}},scores={CT1=1200..,Mana=50..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/018/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"飢餓怨嗟の魂","color":"dark_purple","italic":false}'}}}},scores={CT2=1200..,Mana=50..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/018/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"麦畑生成の儀","italic":false,"color":"gold"}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/018/skill/3/0


execute if entity @s[scores={damageTaken=1..,Mana=10..},nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] run function project-c:jobaction/018/regen



scoreboard players reset @s[scores={damageTaken=1..}] damageTaken
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
scoreboard players reset @s[scores={sneak=1..}] sneak

#小麦機構
#execute if block 99 8 -122 minecraft:repeating_command_block{auto:0b} if entity @s[nbt={Inventory:[{tag:{display:{Lore:["発動:スニーク","自身のHPを4だけ回復する。"]}}}]}] run data merge block 99 8 -122 {auto:1b}
