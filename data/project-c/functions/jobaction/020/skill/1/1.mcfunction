scoreboard players add @s counter 1

particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0 10 force @a
playsound minecraft:block.note_block.bell master @a ~ ~ ~ 2 1.45

teleport @s ^ ^ ^1 ~ ~1

execute as @e[distance=..2.2,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber run summon area_effect_cloud ~ ~0.3 ~ {CustomName:'{"text":"スターロッド","color":"white"}',Particle:'',Radius:0.67f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b,ShowIcon:0b}]}
execute as @e[distance=..2.2,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber at @s run tp @s @s

execute as @e[distance=..2.2,tag=Battle] unless score @s teamNumber = @a[limit=1,sort=nearest,gamemode=!spectator] teamNumber run effect give @s glowing 1 0

execute as @s unless block ^ ^ ^1 #project-c:wancomatter/like_air at @s run kill @s
kill @s[scores={counter=10..}]