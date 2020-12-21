scoreboard players operation @s counter_2 = @s counter_3
scoreboard players operation @s counter_2 += @s counter_1
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get @s counter_2
execute if entity @s[tag=041-stand-red] at @s positioned ~ ~0.5 ~ run summon fireball ^ ^ ^1 {direction:[0.0d,0.245d,0.0d],power:[0.0d,-0.030625d,0.0d],ExplosionPower:1,Tags:["041-inferno-t"],CustomName:"{\"text\":\"アビスインフェルノ\",\"color\":\"red\"}"}
execute if entity @s[tag=041-stand-blue] at @s positioned ~ ~0.5 ~ run summon fireball ^ ^ ^1 {direction:[0.0d,0.245d,0.0d],power:[0.0d,-0.030625d,0.0d],ExplosionPower:1,Tags:["041-inferno-t"],CustomName:"{\"text\":\"アビスインフェルノ\",\"color\":\"blue\"}"}
execute store result score #041-dummy counter run data get entity @e[tag=041-inferno-t,limit=1] Pos[0] 10
scoreboard players operation #041-dummy counter -= #041-dummy counter_1
execute store result entity @e[tag=041-inferno-t,limit=1] direction[0] double 0.2 run scoreboard players get #041-dummy counter
execute store result score #041-dummy counter run data get entity @e[tag=041-inferno-t,limit=1] Pos[2] 10
scoreboard players operation #041-dummy counter -= #041-dummy counter_2
execute store result entity @e[tag=041-inferno-t,limit=1] direction[2] double 0.2 run scoreboard players get #041-dummy counter
tag @e[tag=041-inferno-t] remove 041-inferno-t