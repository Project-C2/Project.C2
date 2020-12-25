execute if entity @s[tag=!SkillDelay1,scores={CT1=..1199},nbt=!{Inventory:[{tag:{CT:1}}]}] run scoreboard players set #CT counter 1
execute if score #CT counter matches 1.. run function project-c:general/cooltime/loot_items
execute if entity @s[tag=!SkillDelay2,scores={CT2=..1199},nbt=!{Inventory:[{tag:{CT:2}}]}] run scoreboard players set #CT counter 2
execute if score #CT counter matches 1.. run function project-c:general/cooltime/loot_items
execute if entity @s[tag=!SkillDelay3,scores={CT3=..1199},nbt=!{Inventory:[{tag:{CT:3}}]}] run scoreboard players set #CT counter 3
execute if score #CT counter matches 1.. run function project-c:general/cooltime/loot_items

execute if entity @s[tag=!SkillDelay1,scores={CT1=..1199},nbt={Inventory:[{tag:{CT:1}}]}] run function project-c:general/cooltime/ct1_remove
execute if entity @s[tag=!SkillDelay2,scores={CT2=..1199},nbt={Inventory:[{tag:{CT:2}}]}] run function project-c:general/cooltime/ct2_remove
execute if entity @s[tag=!SkillDelay3,scores={CT3=..1199},nbt={Inventory:[{tag:{CT:3}}]}] run function project-c:general/cooltime/ct3_remove