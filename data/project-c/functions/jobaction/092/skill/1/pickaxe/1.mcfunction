scoreboard players add @s counter_3 1
gamemode adventure @s
gamemode spectator @s

execute align y run particle minecraft:block dirt ~ ~1.1 ~ 1 0.1 1 1 12 normal @a
execute align y run particle minecraft:block dirt ~ ~1.1 ~ 1 0.1 1 1 3 force @a
playsound minecraft:block.gravel.break master @a ~ ~ ~ 1 0.5

tag @s add 092-user
execute as @e[type=area_effect_cloud,distance=4..,tag=092-p1] if score @s playerNumber = @a[tag=092-user,limit=1] playerNumber positioned as @s run tp @a[tag=092-user] ~ ~ ~
tag @s remove 092-user

execute at @s if block ~ ~0.1 ~ #project-c:wancomatter/like_air if block ~ ~ ~ #project-c:wancomatter/like_air run scoreboard players set @s counter_3 30
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["this","092-p1"],Duration:2}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber


execute store result score @e[tag=this,limit=1] counter run data get entity @s Pos[1] 10
scoreboard players operation @e[tag=this,limit=1] counter -= @s counter_4
execute if score @s counter_3 matches 25.. unless score @e[tag=this,limit=1] counter matches 10.. run function project-c:jobaction/092/skill/1/pickaxe/3
execute if score @e[tag=this,limit=1] counter matches ..-1 run function project-c:jobaction/092/skill/1/pickaxe/9
execute if score @e[tag=this,limit=1] counter matches 10.. at @s run function project-c:jobaction/092/skill/1/pickaxe/2
tag @e[tag=this] remove this


