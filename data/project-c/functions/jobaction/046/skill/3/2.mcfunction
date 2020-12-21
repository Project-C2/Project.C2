scoreboard players remove @s counter_3 1
execute at @a if score @s counter_1 = @a[limit=1,sort=nearest] playerNumber run scoreboard players remove @a[limit=1,sort=nearest,distance=..0,scores={CT1=..1199}] CT1 1
execute at @a if score @s counter_1 = @a[limit=1,sort=nearest] playerNumber run scoreboard players remove @a[limit=1,sort=nearest,distance=..0,scores={CT2=..1199}] CT2 1
execute at @a if score @s counter_1 = @a[limit=1,sort=nearest] playerNumber run scoreboard players remove @a[limit=1,sort=nearest,distance=..0,scores={CT3=..1199}] CT3 1
execute at @a if score @s counter_1 = @a[limit=1,sort=nearest] playerNumber run particle minecraft:dust 1 0 0 2 ~ ~ ~ 1 1 1 0 1