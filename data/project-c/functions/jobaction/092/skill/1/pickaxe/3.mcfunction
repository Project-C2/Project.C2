scoreboard players set @e[tag=this,limit=1] counter 10
execute store result entity @e[tag=this,limit=1,sort=nearest] Pos[1] double 0.1 run scoreboard players get @s counter_4
execute positioned as @e[tag=this,limit=1,sort=nearest] run tp @s ~ ~1 ~
