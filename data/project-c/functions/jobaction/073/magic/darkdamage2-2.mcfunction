scoreboard players add @s counter 1
tp @s ^ ^ ^1

#＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#パーティクル表示
particle dragon_breath ~ ~ ~ 0 0 0 0.01 2
particle firework ~ ~ ~ 0 0 0 1 8
particle block red_nether_bricks ~ ~ ~ 0 0 0 0.1 1 normal @a

#＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#当たったときの処理

execute if entity @s[tag=DarkDamage2Red] run execute as @e[team=Blue,distance=..2] at @s run effect clear @s resistance
execute if entity @s[tag=DarkDamage2Red] run execute as @e[team=Blue,distance=..2] at @s run effect give @s instant_damage 1 1
execute if entity @s[tag=DarkDamage2Red] run execute as @e[team=Blue,distance=..2] at @s run effect give @s wither 4 1
execute if entity @s[tag=DarkDamage2Blue] run execute as @e[team=Red,distance=..2] at @s run effect clear @s resistance
execute if entity @s[tag=DarkDamage2Blue] run execute as @e[team=Red,distance=..2] at @s run effect give @s instant_damage 1 1
execute if entity @s[tag=DarkDamage2Blue] run execute as @e[team=Red,distance=..2] at @s run effect give @s wither 4 1

execute if entity @s[tag=DarkDamage2Red] run execute as @e[team=Blue,distance=..2] at @s run kill @e[tag=DarkDamage2Red,limit=1]
execute if entity @s[tag=DarkDamage2Blue] run execute as @e[team=Red,distance=..2] at @s run kill @e[tag=DarkDamage2Blue,limit=1]

#＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
kill @s[scores={counter=40}]