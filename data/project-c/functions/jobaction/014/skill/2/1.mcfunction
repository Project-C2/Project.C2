scoreboard players remove @s counter 1
scoreboard players reset @s[scores={counter=..0}] counter

particle sweep_attack ~ ~ ~ 5 2 5 1 10
playsound minecraft:entity.wither.shoot master @a ~ ~0.5 ~ 0.2 1.5
particle block minecraft:glass ~ ~ ~ 5 2 5 1 30 normal @a

execute as @e[distance=..10,type=arrow] run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}
execute as @e[distance=..10,type=fireball] run data merge entity @s {direction:[0.0d,1.0d,0.0d]}
execute as @e[distance=..10,type=potion] run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}
execute as @e[distance=..10,type=shulker_bullet] run data merge entity @s {Motion:[0.0d,1.0d,0.0d]}