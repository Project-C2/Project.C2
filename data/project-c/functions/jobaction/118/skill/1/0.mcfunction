scoreboard players set @s CT1 1200
execute store result score #118-- counter run data get entity @s SelectedItem.tag.cooltime
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s CT1 -= #118-- counter

execute store result score #118-- counter run data get entity @s SelectedItem.tag.e-time
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s counter_1 = #118-- counter

playsound entity.player.levelup master @a ~ ~ ~ 1 0
playsound entity.player.levelup master @a ~ ~ ~ 1 0
tag @s add 118-

execute as @e[tag=118_0_selecting] if score @s playerNumber = @a[tag=118-,limit=1] counter run tag @s add 118_1_selected--
execute if entity @e[tag=118_1_selected--,limit=1] at @e[tag=118_1_selected--] facing entity @a[tag=118-,limit=1] feet run function project-c:jobaction/118/skill/1/particle

execute if entity @e[tag=118_1_selected--,limit=1] as @e[tag=118_1_selected--] run tag @s remove 118_1_selected--
scoreboard players reset #118--

tag @s remove 118-

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1