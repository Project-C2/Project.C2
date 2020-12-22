#スキル11

#tag @s[tag=fire_arrow_hit] add fire_arrow_anchor
execute facing entity @s feet positioned 0.0 0.4 0.0 positioned ^ ^ ^3 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["fire_arrow_aec"]}
summon minecraft:arrow ~ ~ ~ {pickup:0b,Owner:[I;0,0,0,0],CustomName:'{"text":"灯火矢"}',Tags:["fire_arrow","number_operation"],Color:-1,Fire:4000s,Motion:[0.0d,0.0d,0.0d]}

execute if entity @e[tag=number_operation,limit=1] as @e[tag=number_operation] run data modify entity @s Motion set from entity @e[tag=fire_arrow_aec,limit=1] Pos
execute if entity @e[tag=number_operation,limit=1] run kill @e[tag=fire_arrow_aec,limit=1]



scoreboard players operation #106_playerNumber counter = @e[type=minecraft:blaze,tag=106_fire_execution,tag=106_fire_this,limit=1] playerNumber
execute as @a if score @s playerNumber = #106_playerNumber counter run tag @s add UUID_operation
scoreboard players reset #106_playerNumber
execute as @e[tag=number_operation,type=minecraft:arrow,sort=nearest,limit=1] run data modify entity @s Owner set from entity @a[tag=UUID_operation,limit=1] UUID
execute if entity @a[tag=UUID_operation,limit=1] as @a[tag=UUID_operation] run tag @s remove UUID_operation

execute if entity @e[tag=number_operation,limit=1] as @e[tag=number_operation] run tag @s remove number_operation

#execute if entity @s[tag=fire_arrow_anchor] run tag @s remove fire_arrow_anchor


tag @e[tag=106_fire_arrow_hit] remove 106_fire_arrow_hit