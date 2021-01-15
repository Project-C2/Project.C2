scoreboard players set @s CT1 1200
execute store result score #118-- counter run data get entity @s SelectedItem.tag.cooltime
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s CT1 -= #118-- counter

execute store result score #118-- counter run data get entity @s SelectedItem.tag.e-time
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s counter_1 = #118-- counter

playsound entity.player.levelup master @a ~ ~ ~ 1 0
playsound entity.player.levelup master @a ~ ~ ~ 1 0
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a

tag @s add 118-
scoreboard players operation @s counter_3 = @s counter

execute as @a[tag=Battle] if score @s playerNumber = @a[tag=118-,limit=1] counter_3 run tag @s add 118_1_selected--
execute if entity @a[tag=118_1_selected--,limit=1] at @a[tag=118_1_selected--] facing entity @a[tag=118-,limit=1] feet run function project-c:jobaction/118/skill/1/particle

execute if entity @a[tag=118_1_selected--,limit=1] as @a[tag=118_1_selected--] run tellraw @s ["",{"text":"痛覚共有","color":"#ff0000"},{"text":" <- "},{"selector":"@a[tag=118-,limit=1]"}]
execute if entity @a[tag=118_1_selected--,limit=1] at @a[tag=118_1_selected--] run playsound entity.player.levelup master @a ~ ~ ~ 1 0
execute if entity @a[tag=118_1_selected--,limit=1] at @a[tag=118_1_selected--] run playsound entity.player.levelup master @a ~ ~ ~ 1 0
execute if entity @a[tag=118_1_selected--,limit=1] at @a[tag=118_1_selected--] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a

execute if entity @a[tag=118_1_selected--,limit=1] as @a[tag=118_1_selected--] run tag @s remove 118_1_selected--
scoreboard players reset #118--

tag @s remove 118-

title @s actionbar [{"text":""}]
scoreboard players reset @s counter
scoreboard players reset @s subcounter

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1