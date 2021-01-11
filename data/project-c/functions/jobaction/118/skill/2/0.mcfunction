scoreboard players set @s CT2 1200
execute store result score #118-- counter run data get entity @s SelectedItem.tag.cooltime
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s CT2 -= #118-- counter

execute store result score #118-- counter run data get entity @s SelectedItem.tag.e-time
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s counter_2 = #118-- counter

tag @s add 118-
scoreboard players operation @s counter_4 = @s counter

execute as @a[tag=Battle] if score @s playerNumber = @a[tag=118-,limit=1] counter_4 run tag @s add 118_2_selected--
execute if entity @a[tag=118_2_selected--,limit=1] at @a[tag=118_2_selected--] facing entity @a[tag=118-,limit=1] feet run function project-c:jobaction/118/skill/2/particle

execute if entity @a[tag=118_2_selected--,limit=1] as @a[tag=118_2_selected--] run tag @s remove 118_2_selected--
scoreboard players reset #118--

tag @s remove 118-

playsound minecraft:entity.villager.death master @a ~ ~ ~ 1 0

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2