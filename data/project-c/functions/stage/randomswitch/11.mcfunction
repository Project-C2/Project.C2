execute if block 1009 63 53 minecraft:redstone_block as @a run tag @a add SRST
execute if block 1009 63 53 minecraft:stone as @a run tag @a add SRSF

execute if entity @a[tag=SRST] as @a run scoreboard players set #StageRandomSwitch11 counter 0
execute if entity @a[tag=SRST] as @a run setblock 1009 63 53 stone

execute if entity @a[tag=SRSF] as @a run scoreboard players set #StageRandomSwitch11 counter 1
execute if entity @a[tag=SRSF] as @a run setblock 1009 63 53 redstone_block

tag @a remove SRST
tag @a remove SRSF