particle minecraft:explosion ~ ~1 ~ 0.7 0.7 0.7 0 2 normal @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0
execute if entity @e[distance=..3.0,tag=Battle,limit=1] as @e[distance=..3.0,tag=Battle] run tag @s add hit
data merge storage wnkm_check_hit: {option:0b,including_myself:0b}
function project-c:general/teamcheck
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/040/skill/1/dmg
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 3 force @a
kill @s
