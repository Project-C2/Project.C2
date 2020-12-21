execute align xz run playsound minecraft:block.stone.place master @a ~0.5 ~ ~0.5 3 0.75
execute align xz run playsound minecraft:block.stone.place master @a ~0.5 ~ ~0.5 3 0.75
execute align xz run particle minecraft:explosion ~0.5 ~ ~0.5 0 0 0 1 1 force @a
execute align xz run particle minecraft:block dirt ~0.5 ~0.25 ~0.5 0.5 0.5 0.5 1 50
execute align y run summon minecraft:shulker ~ ~ ~ {NoAI:1b,Invulnerable:1b,DeathTime:19s,Silent:1b,Color:12b,Tags:["092_tower_shulker","this"],Glowing:1b}
execute if entity @s[tag=092Red] run team join Red @e[tag=this,limit=1]
execute if entity @s[tag=092Blue] run team join Blue @e[tag=this,limit=1]
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] counter = @s counter
scoreboard players add @e[tag=this] counter 17
scoreboard players operation @e[tag=this] counter /= @s counter_1
tag @e[tag=this] remove this
tp @s ^1 ^0.25 ^ ~-90 ~

