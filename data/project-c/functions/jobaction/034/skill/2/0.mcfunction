scoreboard players set @s CT2 600
scoreboard players set @s[scores={CT3=1200..}] CT3 1200
scoreboard players remove @s CT3 100
scoreboard players operation #034dummy playerNumber = @s playerNumber
execute if entity @e[tag=034-wolf,limit=1] as @e[tag=034-wolf] if score @s playerNumber = #034dummy playerNumber run kill @s
playsound minecraft:item.bottle.fill_dragonbreath master @a ~ ~ ~ 2 1
particle minecraft:falling_dust white_wool ~ ~1 ~ 1 1 1 1 120 force @a
execute if entity @s[team=Red] run summon wolf ~ ~1 ~ {CustomName:'"わんこマター"',Tags:["Battle","034-wolfR","034-wolfF","034-wolf"],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:3},{Name:"generic.follow_range",Base:100}],Health:20.0f,Team:"Red"}
execute if entity @s[team=Blue] run summon wolf ~ ~1 ~ {CustomName:'"わんこマター"',Tags:["Battle","034-wolfB","034-wolfF","034-wolf"],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.movement_speed",Base:0.3},{Name:"generic.attack_damage",Base:3},{Name:"generic.follow_range",Base:100}],Health:20.0f,Team:"Red"}
execute as @e[tag=034-wolfF] run scoreboard players operation @s playerNumber = #034dummy playerNumber
loot replace entity @e[tag=034-wolfF] armor.head loot project-c:player_head
execute as @e[tag=034-wolfF] run data modify entity @s OwnerUUID set from entity @s ArmorItems[{id:"minecraft:player_head"}].tag.SkullOwner.Id
tag @e[tag=034-wolfF] remove 034-wolfF

scoreboard players reset #034dummy playerNumber
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
tag @s remove SkillReady3