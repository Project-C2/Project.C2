scoreboard players set @s counter 0

execute as @e[tag=Bomb,limit=1,sort=nearest] run function project-c:jobaction/005/findownbomb
tag @e[tag=notOwnBomb] remove notOwnBomb


execute if entity @s[scores={counter=1}] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter=1}] run data merge entity @e[tag=OwnBomb,limit=1] {Fuse:0s}
tag @e[tag=OwnBomb] remove OwnBomb

execute if entity @s[scores={counter=0}] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 0.5 2