#スキル15

tp @s ~ ~ ~ ~22 ~
playsound minecraft:item.bucket.fill master @a ~ ~ ~ 1 2
particle minecraft:splash ~ ~ ~ 0 0.4 0 0.1 10 force
#particle minecraft:falling_water ~ ~ ~ 0 1 0 0.1 5 force


execute positioned 0.0 0.0 0.0 rotated ~ -35 positioned ^ ^ ^1.2 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["106_sprink_arrow_aec1"]}
summon minecraft:arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],CustomName:'{"text":"スプリンクラーアロー"}',Tags:["106_sprink_arrow","106_sprink_arrow1","number_operation"],Color:-1,Motion:[0.0d,0.0d,0.0d],damage:3.0d}

execute if entity @e[tag=number_operation,tag=106_sprink_arrow1,limit=1] as @e[tag=number_operation,tag=106_sprink_arrow1] run data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=106_sprink_arrow_aec1,limit=1] Pos
kill @e[type=area_effect_cloud,tag=106_sprink_arrow_aec1,limit=1]
execute if entity @e[tag=number_operation,tag=106_sprink_arrow1,limit=1] as @e[tag=number_operation,tag=106_sprink_arrow1] run tag @s remove sprink_arrow1



execute positioned 0.0 0.24 0.0 rotated ~11 0 positioned ^ ^ ^1.2 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["106_sprink_arrow_aec2"]}
summon minecraft:arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],CustomName:'{"text":"スプリンクラーアロー"}',Tags:["106_sprink_arrow","106_sprink_arrow2","number_operation","center"],Color:-1,Motion:[0.0d,0.0d,0.0d],damage:3.0d}

execute if entity @e[tag=number_operation,tag=106_sprink_arrow2,limit=1] as @e[tag=number_operation,tag=106_sprink_arrow2] run data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=106_sprink_arrow_aec2,limit=1] Pos
kill @e[type=area_effect_cloud,tag=106_sprink_arrow_aec2,limit=1]
execute if entity @e[tag=number_operation,tag=106_sprink_arrow2,limit=1] as @e[tag=number_operation,tag=106_sprink_arrow2] run tag @s remove sprink_arrow2



execute positioned 0.0 0.0 0.0 rotated ~ 35 positioned ^ ^ ^1.2 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["106_sprink_arrow_aec3"]}
summon minecraft:arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],CustomName:'{"text":"スプリンクラーアロー"}',Tags:["106_sprink_arrow","106_sprink_arrow3","number_operation"],Color:-1,Motion:[0.0d,0.0d,0.0d],damage:3.0d}

execute if entity @e[tag=number_operation,tag=106_sprink_arrow3,limit=1] as @e[tag=number_operation,tag=106_sprink_arrow3] run data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=106_sprink_arrow_aec3,limit=1] Pos
kill @e[type=area_effect_cloud,tag=106_sprink_arrow_aec3,limit=1]
execute if entity @e[tag=number_operation,tag=106_sprink_arrow3,limit=1] as @e[tag=number_operation,tag=106_sprink_arrow3] run tag @s remove sprink_arrow3



scoreboard players operation @e[type=arrow,tag=106_sprink_arrow,tag=number_operation] playerNumber = @s playerNumber



scoreboard players operation #106_playerNumber counter = @s playerNumber
execute as @a if score @s playerNumber = #106_playerNumber counter run tag @s add UUID_operation
scoreboard players reset #106_playerNumber
execute if entity @e[tag=number_operation,type=minecraft:arrow,limit=1] as @e[tag=number_operation,type=minecraft:arrow] run data modify entity @s Owner set from entity @p[tag=UUID_operation] UUID
execute if entity @e[tag=number_operation,type=minecraft:arrow,limit=1] as @e[tag=number_operation,type=minecraft:arrow] run tag @s remove number_operation

execute if entity @p[tag=UUID_operation] as @a[tag=UUID_operation] run tag @s remove UUID_operation
