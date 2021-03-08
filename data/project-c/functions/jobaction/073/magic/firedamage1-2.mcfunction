scoreboard players add @s counter 1
tp @s ^ ^ ^1
execute unless block ~ ~ ~ #project-c:wancomatter/like_air run kill @s
#＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#パーティクル表示
particle flame ~ ~ ~ 0 0 0 0.01 8
particle firework ~ ~ ~ 0 0 0 1 8

#＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
#当たったときの処理

execute if entity @s[tag=FireDamage1Red] run execute as @e[team=Blue,distance=..2,tag=Battle] at @s run summon arrow ~ ~3 ~ {CustomName:'{"text":"§cFireDamage"}',CustomNameVisible:1,Motion:[0.0,-1.0,0.0],pickup:0,damage:1,Fire:20}
execute if entity @s[tag=FireDamage1Blue] run execute as @e[team=Red,distance=..2,tag=Battle] at @s run summon arrow ~ ~3 ~ {CustomName:'{"text":"§cFireDamage"}',CustomNameVisible:1,Motion:[0.0,-1.0,0.0],pickup:0,damage:1,Fire:20}

execute if entity @s[tag=FireDamage1Red] run execute as @e[team=Blue,distance=..2,tag=Battle] at @s run kill @e[tag=FireDamage1Red,limit=1]
execute if entity @s[tag=FireDamage1Blue] run execute as @e[team=Red,distance=..2,tag=Battle] at @s run kill @e[tag=FireDamage1Blue,limit=1]

#＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
kill @s[scores={counter=40}]