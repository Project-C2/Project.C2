
execute store result score #118-- counter run data get entity @s SelectedItem.tag.e-time
scoreboard players operation #118-- counter *= #20 counter
scoreboard players operation @s counter_2 = #118-- counter

playsound minecraft:entity.villager.death master @a ~ ~ ~ 1 0
particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 20 force @a

tag @s add 118-
scoreboard players operation @s counter_4 = @s counter

execute as @a[tag=Battle] if score @s playerNumber = @a[tag=118-,limit=1] counter_4 run tag @s add 118_2_selected--
execute if entity @a[tag=118_2_selected--,limit=1] at @a[tag=118_2_selected--] facing entity @a[tag=118-,limit=1] feet run function project-c:jobaction/118/skill/2/particle

execute if entity @a[tag=118_2_selected--,limit=1] as @a[tag=118_2_selected--] run tellraw @s ["",{"text":"CT共有","color":"#0000ff"},{"text":" <- "},{"selector":"@a[tag=118-,limit=1]"}]
execute if entity @a[tag=118_2_selected--,limit=1] at @a[tag=118_2_selected--] run playsound minecraft:entity.villager.death master @a ~ ~ ~ 1 0
execute if entity @a[tag=118_2_selected--,limit=1] at @a[tag=118_2_selected--] run particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 20 force @a

execute if entity @a[tag=118_2_selected--,limit=1] as @a[tag=118_2_selected--] run tag @s remove 118_2_selected--
scoreboard players reset #118--

tag @s remove 118-

function project-c:jobaction/118/replaceitem/2

title @s actionbar [{"text":""}]
scoreboard players reset @s counter
scoreboard players reset @s counter_9