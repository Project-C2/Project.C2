execute if score @s stockcounter matches 2.. run scoreboard players set @s CT3 1200
execute if score @s stockcounter matches 2.. run scoreboard players set @s subcounter 1200
execute if score @s stockcounter matches 3.. run scoreboard players set @s stockcounter 2
scoreboard players remove @s stockcounter 1
execute unless score @s stockcounter matches 1.. run clear @s minecraft:tipped_arrow{CustomPotionColor:11141290}
execute unless score @s stockcounter matches 1.. run scoreboard players remove @s CT3 140
execute unless score @s stockcounter matches 1.. run scoreboard players remove @s subcounter 140
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1060..1079 run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 7
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1080..1099 run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 6
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1100..1119 run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 5
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1120..1139 run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 4
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1140..1159 run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 3
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1160..1179 run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 2
execute unless score @s stockcounter matches 1.. if score @s CT3 matches 1180..1199 run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 1

execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^3 {Tags:["vector"],Duration:1}
loot spawn 0 0 0 loot project-c:wnkm/rand.-180_179
execute store result score @e[tag=vector,limit=1] counter run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand"}].Amount 1
kill @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}}]
execute anchored eyes positioned ^ ^ ^0.5 as @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] if score @s counter matches ..-61 run summon minecraft:arrow ~ ~ ~ {Tags:["097_3arrow","097_3slow","this","Arrow"],damage:2.00d,life:1200s,pickup:2b,CustomPotionEffects:[{Id:2b,Amplifier:2b,Duration:60}]}
execute anchored eyes positioned ^ ^ ^0.5 as @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] if score @s counter matches -60..59 run summon minecraft:arrow ~ ~ ~ {Tags:["097_3arrow","097_3weak","this","Arrow"],damage:2.00d,life:1200s,pickup:2b,CustomPotionEffects:[{Id:18b,Amplifier:0b,Duration:60}]}
execute anchored eyes positioned ^ ^ ^0.5 as @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] if score @s counter matches 60.. run summon minecraft:arrow ~ ~ ~ {Tags:["097_3arrow","097_3stop","this","Arrow"],damage:2.00d,life:1200s,pickup:2b,CustomPotionEffects:[{Id:27b,Amplifier:0b,Duration:60}]}

data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
tag @e[tag=vector] remove vector
tag @e[tag=this] remove this

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2

data merge block 63 2 89 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

