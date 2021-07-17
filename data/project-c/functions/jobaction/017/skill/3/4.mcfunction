scoreboard players add @s counter 1

particle minecraft:explosion ~ ~ ~ 0 0 0 0 3 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.3 0
particle minecraft:dust 2 0 0 3 ~ ~ ~ 0.6 0.6 0.6 3 7 force
teleport @s ^ ^ ^2 ~ ~

execute as @e[distance=..2.5,tag=Battle] unless score @s teamNumber = @e[limit=1,sort=nearest,tag=017-StarMeteor] teamNumber run effect give @s instant_damage 1 1

summon creeper ^ ^ ^ {CustomName:"{\"text\":\"ウェイクアップ\"}",ignited:1b,ExplosionRadius:3b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
summon creeper ^ ^ ^1 {CustomName:"{\"text\":\"ウェイクアップ\"}",ignited:1b,ExplosionRadius:3b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute as @s unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run particle minecraft:flame ~ ~ ~ 0 0 0 1 100
kill @s[scores={counter=50..}]