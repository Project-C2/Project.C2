scoreboard players add @s counter 1

execute if entity @s[tag=017-InfelnoActive] as @e[distance=..2.2,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber run effect give @s instant_damage 1 0
execute if entity @s[tag=017-InfelnoActive] positioned ^ ^ ^-1 as @e[distance=..2.2,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber run effect give @s instant_damage 1 0


particle flame ~ ~ ~ 0.1 0.1 0.1 0.1 5 force
execute as @e[tag=017-InfelnoActive] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 2 force
execute as @e[tag=017-InfelnoActive] at @s run particle flame ^ ^ ^-1 0.1 0.1 0.1 0.05 10
execute as @e[tag=017-InfelnoActive] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.3 0

execute as @e[tag=017-InfelnoActive] at @s run teleport @s ^ ^ ^2 ~ ~

execute as @s[tag=017-InfelnoActive] unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"イノセントインフェルノ\"}",ignited:1b,ExplosionRadius:1b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute as @s[tag=017-InfelnoActive] unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run kill @s
kill @s[scores={counter=55..}]