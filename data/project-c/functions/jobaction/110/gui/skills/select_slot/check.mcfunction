execute unless data entity @s {Inventory:[{Slot:27b,tag:{110GUI:1b}}]} run scoreboard players set #110- counter_4 5
execute unless data entity @s {Inventory:[{Slot:35b,tag:{110GUI:1b}}]} run scoreboard players set #110- counter_4 5
execute unless data entity @s {Inventory:[{Slot:29b,tag:{110GUISlot:2b}}]} run scoreboard players set #110- counter_4 1
execute unless data entity @s {Inventory:[{Slot:31b,tag:{110GUISlot:4b}}]} run scoreboard players set #110- counter_4 2
execute unless data entity @s {Inventory:[{Slot:33b,tag:{110GUISlot:6b}}]} run scoreboard players set #110- counter_4 3
execute if score #110- counter_4 matches 1 run scoreboard players operation @s counter_2 = @s subcounter
execute if score #110- counter_4 matches 2 run scoreboard players operation @s counter_3 = @s subcounter
execute if score #110- counter_4 matches 3 run scoreboard players operation @s counter_4 = @s subcounter
execute if score #110- counter_4 matches 1..3 run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2


execute if score #110- counter_4 matches 1.. run scoreboard players set @s CT1 1201
execute if score #110- counter_4 matches 1.. run scoreboard players set @s CT2 1201
execute if score #110- counter_4 matches 1.. run scoreboard players set @s CT3 1201

execute if score #110- counter_4 matches 1.. run tag @s remove SkillReady1
execute if score #110- counter_4 matches 1.. run tag @s remove SkillReady2
execute if score #110- counter_4 matches 1.. run tag @s remove SkillReady3

execute if score #110- counter_4 matches 1.. run scoreboard players reset @s subcounter
execute if score #110- counter_4 matches 1.. run tag @s remove 110SelectSkillSlot2
execute if score #110- counter_4 matches 1.. run tag @s add 110pageChange
