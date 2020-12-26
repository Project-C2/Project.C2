scoreboard players operation #110-dagger counter = @s counter
scoreboard players operation #110-dagger counter %= #1000 counter
scoreboard players operation #110-dagger counter *= #2 counter
scoreboard players operation #110-dagger counter /= #3 counter
scoreboard players operation @s counter -= #110-dagger counter
scoreboard players reset #110-dagger
execute positioned as @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.4 2
tag @s remove 110_dagger_owner
kill @e[tag=now]