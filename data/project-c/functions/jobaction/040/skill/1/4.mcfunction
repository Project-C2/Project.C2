scoreboard players set @s subcounter 1
tag @s add Projectile
particle minecraft:firework ~ ~ ~ 0 0 0 1 10 force @a
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1
particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force @a
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 0
tag @e[tag=Battle,distance=15..100] add hit
execute if entity @e[tag=hit,limit=1] run data merge storage wnkm_check_hit: {option:0b,including_myself:0b}
execute if entity @e[tag=hit,limit=1] run function project-c:general/teamcheck
tp @s ^ ^1 ^ facing entity @e[tag=hit,limit=1,sort=nearest]
tag @e[tag=hit] remove hit
