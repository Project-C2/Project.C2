scoreboard players set @s CT1 1200
execute store result score #-118 counter run data get entity @s SelectedItem.tag.cooltime
scoreboard players operation #-118 counter *= #20 counter
scoreboard players operation @s CT1 -= #-118 counter

playsound entity.player.levelup master @a ~ ~ ~ 1 0
playsound entity.player.levelup master @a ~ ~ ~ 1 0
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a

tag @s add -118-

scoreboard players set @s OutCombat 0

execute as @a[tag=Battle] if score @s playerNumber = @a[tag=-118-,limit=1] counter run tag @s add -118-1-a
execute if entity @a[tag=-118-1-a,limit=1] at @a[tag=-118-1-a] facing entity @a[tag=-118-,limit=1] feet run function project-c:hiddenjob/-118/skill/1/particle


execute store result score #-118 counter_1 run data get entity @s Health 100
execute as @a[tag=-118-1-a] store result score #-118 counter_2 run data get entity @s Health 100

scoreboard players operation #-118 counter_1 /= #2 counter

scoreboard players operation @s ScoreToHealth = #-118 counter_1
scoreboard players operation #-118 counter_2 += #-118 counter_1
execute as @a[tag=-118-1-a] run scoreboard players operation @s ScoreToHealth = #-118 counter_2


scoreboard players operation #-118 counter_1 /= #100 counter
execute if entity @a[tag=-118-1-a,limit=1] as @a[tag=-118-1-a] run tellraw @s ["",{"score":{"name":"#-118","objective": "counter_1"},"color":"green"},{"text":"回復","color":"green"},{"text":" <- "},{"selector":"@a[tag=-118-,limit=1]"}]
execute if entity @a[tag=-118-1-a,limit=1] at @a[tag=-118-1-a] run playsound entity.player.levelup master @a ~ ~ ~ 1 0
execute if entity @a[tag=-118-1-a,limit=1] at @a[tag=-118-1-a] run playsound entity.player.levelup master @a ~ ~ ~ 1 0
execute if entity @a[tag=-118-1-a,limit=1] at @a[tag=-118-1-a] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a

execute if entity @a[tag=-118-1-a,limit=1] as @a[tag=-118-1-a] run tag @s remove -118-1-a
scoreboard players reset #-118

tag @s remove -118-

title @s actionbar [{"text":""}]
scoreboard players reset @s counter

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1