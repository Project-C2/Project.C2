execute store result score @s CT2 run data get entity @s SelectedItem.tag.wnkmSkillCT 1
summon armor_stand ~ ~1 ~ {Tags:["123gamingStand","first","Stable"],Small:1b,Invisible:1b,Marker:1b,NoGravity:1b,Team:"DarkGray"}
execute store result score @e[tag=first,limit=1] counter_2 run data get entity @s Pos[1] 10
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
execute as @e[tag=first] positioned as @s run tp @s ~ ~ ~ ~ 50
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 5 1
particle minecraft:dust 10 10 10 2 ~ ~ ~ 3 3 3 1 800 normal @a
particle minecraft:dust 10 10 10 2 ~ ~ ~ 3 3 3 1 200 force @a
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 6 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a

gamemode spectator @s
spectate @e[tag=first,limit=1] @s
tag @e[tag=first] remove first

data merge block 106 61 -62 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2