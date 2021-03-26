scoreboard players operation #129- stockcounter = @s stockcounter

execute if entity @e[tag=129-totem-using,limit=1] as @e[tag=129-totem-using] if score @s stockcounter = #129- stockcounter run tag @s add kill
execute if entity @e[tag=129-totemV,limit=1] as @e[tag=129-totemV] if score @s stockcounter = #129- stockcounter run tag @s add kill
tag @s add kill


execute as @e[tag=kill] run kill @s


scoreboard players reset #129-