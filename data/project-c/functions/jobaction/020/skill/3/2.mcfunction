scoreboard players add @s[nbt={OnGround:0b}] counter 1
kill @s[scores={counter=60..}]
tag @s[nbt={OnGround:1b}] add 020-dragoStandong

particle lava ~ ~ ~ 0 0 0 1 1 force @a

execute if entity @s[tag=020-dragoStandong] run tp @s ^ ^ ^ ~ 0

execute if entity @s[tag=020-dragoStandong] at @s run summon minecraft:marker ^ ^ ^-50 {Tags:["020-dragoline","020-dragolineSummon","Projectile"]}
scoreboard players operation @e[tag=020-dragolineSummon,limit=1] playerNumber = @s playerNumber
scoreboard players operation #skillCheck teamNumber = @s teamNumber
scoreboard players operation @e[tag=020-dragolineSummon] teamNumber = #skillCheck teamNumber
scoreboard players reset #skillCheck teamNumber

execute as @e[tag=020-dragolineSummon] at @s run tp @s ^ ^ ^1 facing entity @e[tag=020-dragoStandong,limit=1]
execute as @e[tag=020-dragolineSummon] at @s run tp @s ^ ^ ^ ~ 0

tag @e[tag=020-dragolineSummon] remove 020-dragolineSummon

execute if entity @s[tag=020-dragoStandong] run data merge block 121 5 -122 {auto:1b}
kill @s[tag=020-dragoStandong]