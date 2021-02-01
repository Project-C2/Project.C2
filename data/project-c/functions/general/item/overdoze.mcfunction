playsound minecraft:block.portal.ambient master @a ~ ~ ~ 1 2

execute rotated 0 0 run particle dust 1 0 0 3 ^ ^1 ^2.0 0 0 0 0 5 force @a
execute rotated 60 0 run particle dust 1 1 0 3 ^ ^1 ^2.0 0 0 0 0 5 force @a
execute rotated 120 0 run particle dust 0 1 0 3 ^ ^1 ^2.0 0 0 0 0 5 force @a
execute rotated 180 0 run particle dust 0 1 1 3 ^ ^1 ^2.0 0 0 0 0 5 force @a
execute rotated 240 0 run particle dust 0 0 1 3 ^ ^1 ^2.0 0 0 0 0 5 force @a
execute rotated 300 0 run particle dust 1 0 1 3 ^ ^1 ^2.0 0 0 0 0 5 force @a

tag @s add OverPotion
tag @s remove OverPotionF