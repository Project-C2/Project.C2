#判定
scoreboard players set @s counter_4 21
#スキル効果
#共通

summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["126-teleport","126-hassummoned"]}
scoreboard players operation @e[limit=1,sort=nearest,tag=126-hassummoned] playerNumber = @s playerNumber
teleport @e[tag=126-teleport,limit=1,sort=nearest] ^ ^1 ^1.5 ~ ~

tag @e[tag=126-hassummoned] remove 126-hassummoned

execute as @e[tag=126-teleport,limit=1] at @s run function project-c:jobaction/126/skill/0/1