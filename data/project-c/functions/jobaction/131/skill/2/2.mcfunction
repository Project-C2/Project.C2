scoreboard players add @s counter 1
execute if entity @s[scores={counter=45..}] run scoreboard players add @s counter_1 1
scoreboard players add @s counter_2 2
scoreboard players add @s counter_3 6
execute if entity @s[tag=131-necroCXZ] run scoreboard players remove @s[scores={counter_3=90..}] counter_3 180
execute if entity @s[tag=131-necroCY] run scoreboard players remove @s[scores={counter_3=180..}] counter_3 360
execute if entity @s[tag=131-necroCXZ] run scoreboard players remove @s[scores={counter_2=90..}] counter_2 180
execute if entity @s[tag=131-necroCY] run scoreboard players remove @s[scores={counter_2=180..}] counter_2 360

#六芒星の演出
execute if entity @s[tag=131-necroCXZ] store result entity @s Rotation[1] float -1 run scoreboard players get @s counter_2
execute if entity @s[tag=131-necroCY] store result entity @s Rotation[0] float -1 run scoreboard players get @s counter_2
execute if entity @s[tag=131-necroCXZ] run function project-c:jobaction/131/skill/2/2xz
execute if entity @s[tag=131-necroCY] run function project-c:jobaction/131/skill/2/2y
#魔法陣の円の演出
execute if entity @s[tag=131-necroCXZ] store result entity @s Rotation[1] float 1 run scoreboard players get @s counter_3
execute if entity @s[tag=131-necroCY] store result entity @s Rotation[0] float 1 run scoreboard players get @s counter_3
particle minecraft:dust 0.2 1 1 2 ^ ^ ^2 0 0 0 1 1 force @a
particle minecraft:dust 0.2 1 1 2 ^ ^ ^-2 0 0 0 1 1 force @a
execute if entity @s[tag=131-necroCY] run particle minecraft:dust 0.2 1 1 1 ^-2 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=131-necroCY] run particle minecraft:dust 0.2 1 1 1 ^2 ^ ^ 0 0 0 1 1 force @a
execute if entity @s[tag=131-necroCXZ] run particle minecraft:dust 0.2 1 1 1 ^ ^-2 ^ 0 0 0 1 1 force @a
execute if entity @s[tag=131-necroCXZ] run particle minecraft:dust 0.2 1 1 1 ^ ^2 ^ 0 0 0 1 1 force @a

kill @s[scores={counter=300..}]


tag @s[tag=canTPGate] remove canTPGate

execute if score @s playerNumber = @e[tag=131-necroC1,limit=1,sort=nearest] playerNumber run tag @s add canTPGate
execute if entity @s[scores={counter_4=1..}] run scoreboard players remove @s counter_4 1

execute if entity @s[tag=canTPGate,scores={counter_4=0}] if entity @a[tag=Battle,gamemode=!spectator,distance=..2.5,scores={131-GateCT=0}] run scoreboard players set @s counter_4 30
execute if entity @s[tag=canTPGate,scores={counter_4=30}] as @a[tag=Battle,gamemode=!spectator,distance=..2.5,scores={131-GateCT=0}] positioned as @s run function project-c:jobaction/131/skill/2/teleport
