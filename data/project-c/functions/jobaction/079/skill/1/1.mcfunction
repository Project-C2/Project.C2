scoreboard players add @s[nbt={OnGround:0b}] counter 1
kill @s[scores={counter=60..}]
tag @s[nbt={OnGround:1b}] add 079-stong

scoreboard players add @s[tag=079-stong] counter_1 1

particle end_rod ~ ~ ~ 0 0 0 1 1 force @a
particle end_rod ~ ~ ~ 0 0 0 0.1 5 force @a

execute if entity @s[tag=079-stong,tag=079-starrelicR] run effect give @a[team=Red,distance=..6] resistance 1 4
execute if entity @s[tag=079-stong,tag=079-starrelicB] run effect give @a[team=Blue,distance=..6] resistance 1 4

execute if entity @s[tag=079-stong,scores={counter_1=1}] run summon lightning_bolt ~ ~ ~

execute if entity @s[tag=079-stong,scores={counter_1=21}] run summon lightning_bolt ~5 ~ ~
execute if entity @s[tag=079-stong,scores={counter_1=21}] run summon lightning_bolt ~ ~ ~5
execute if entity @s[tag=079-stong,scores={counter_1=21}] run summon lightning_bolt ~-5 ~ ~
execute if entity @s[tag=079-stong,scores={counter_1=21}] run summon lightning_bolt ~ ~ ~-5


execute if entity @s[tag=079-stong,scores={counter_1=41}] run function project-c:jobaction/079/skill/1/2