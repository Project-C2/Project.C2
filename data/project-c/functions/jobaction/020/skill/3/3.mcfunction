scoreboard players add @s counter 1

teleport @s ^ ^ ^3 ~ ~
particle minecraft:barrier ~ ~ ~ 2 2 2 0 30 force @a
summon minecraft:marker ^ ^ ^ {Tags:["020-dragoplane","020-dragoplaneSummon","Projectile"]}
scoreboard players operation @e[tag=020-dragoplaneSummon,limit=1] playerNumber = @s playerNumber
teleport @e[limit=1,sort=nearest,tag=020-dragoplaneSummon] ^ ^1.5 ^1 ~ ~

scoreboard players operation #skillCheck teamNumber = @s teamNumber
scoreboard players operation @e[tag=020-dragoplaneSummon] teamNumber = #skillCheck teamNumber
scoreboard players reset #skillCheck teamNumber
teleport @e[limit=1,sort=nearest,tag=020-dragoplaneSummon] ^ ^1.5 ^ ~ ~

tag @e[tag=020-dragoplaneSummon] remove 020-dragoplaneSummon

data merge block 123 8 -122 {auto:1b}
kill @s[scores={counter=80..}]