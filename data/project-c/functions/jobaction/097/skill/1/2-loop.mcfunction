summon minecraft:arrow ~ ~-10 ~ {Tags:["097sagittaire","this","097this","Arrow"],damage:2.5d,life:1200s,pickup:2b,PierceLevel:127b}
tp @e[tag=097this,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=097this,limit=1] store result score @s counter_1 run data get entity @s UUID[0]
#40で割った余りをとる -> 0～39の乱数
scoreboard players operation @e[tag=097this,limit=1] counter_1 %= @s counter_1
execute as @e[tag=097this,limit=1] at @s run function project-c:jobaction/097/skill/1/2-tp



tag @e[tag=097this] remove 097this
scoreboard players add @s counter_3 1
execute unless score @s counter_3 matches 61.. rotated ~ ~-3 run function project-c:jobaction/097/skill/1/2-loop