#スコア処理
scoreboard players set @e[tag=065,limit=1,sort=nearest] counter 99

#演出
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1.3 1
particle minecraft:poof ~ ~0.5 ~ 0 0 0 0.5 120 normal @a
particle minecraft:poof ~ ~0.5 ~ 0 0 0 0.5 30 force @a

#盲目解除
effect clear @s blindness
tag @s remove 110meditation_using
