#スキル3

#execute if entity @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 10 force
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2
tag @s add this
execute if entity @e[team=Red] anchored eyes positioned ^ ^ ^ as @e[team=!Red,tag=Battle,distance=..7,tag=!this,nbt={HurtTime:10s}] run tag @s add hit
execute if entity @e[team=Blue] anchored eyes positioned ^ ^ ^ as @e[team=!Blue,tag=Battle,distance=..7,tag=!this,nbt={HurtTime:10s}] run tag @s add hit

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s anchored eyes run particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 20 force
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run effect give @s minecraft:glowing 60 200

scoreboard players reset #hurt_number value
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run tag @s remove hit

tag @s remove this

tag @s add marker_chase
