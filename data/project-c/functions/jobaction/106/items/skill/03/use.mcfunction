#スキル3
execute if score @s counter_3 matches 3 run tag @s add skill1_use
execute if score @s counter_4 matches 3 run tag @s add skill2_use
execute if score @s counter_5 matches 3 run tag @s add skill3_use
#===================================================================


scoreboard players set #106_CT counter 400


function project-c:jobaction/106/items/skill/bulk


playsound minecraft:block.lantern.place master @a ~ ~ ~ 1 1.2
particle minecraft:block yellow_stained_glass ~ ~1 ~ 0 0 0 0.2 30
summon minecraft:blaze ~ ~ ~ {Invulnerable:1b,CustomName:'{"text":"灯火"}',Tags:["106_fire","number_operation","Battle"],NoAI:1b,Silent:1b,Health:10f,Attributes:[{Name:"generic.max_health",Base:10}]}



scoreboard players operation @e[type=minecraft:blaze,tag=number_operation,tag=106_fire] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join Red @e[tag=number_operation,limit=1]
execute if entity @s[team=Blue] run team join Blue @e[tag=number_operation,limit=1]


tag @s add 106_fire-player

execute as @e[tag=106_fire] if score @s playerNumber = @a[tag=106_fire-player,limit=1] playerNumber run tag @s add this

tag @e[type=minecraft:blaze,tag=number_operation,tag=106_fire] remove number_operation


execute if entity @e[type=minecraft:blaze,tag=this,limit=1] as @e[type=minecraft:blaze,tag=this] store result score #106_fireC counter_1 if entity @e[type=minecraft:blaze,tag=this]
execute if entity @e[type=minecraft:blaze,tag=this,limit=1] if score #106_fireC counter_1 matches 2.. run kill @e[type=minecraft:blaze,tag=this,limit=1,sort=furthest]

scoreboard players reset #106_fireC

tag @e[type=minecraft:blaze,tag=this] remove this

tag @s remove 106_fire-player