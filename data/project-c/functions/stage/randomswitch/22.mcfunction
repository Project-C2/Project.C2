execute if block 1009 63 57 minecraft:redstone_block as @a run tag @a add SRST
execute if block 1009 63 57 minecraft:stone as @a run tag @a add SRSF

execute if entity @a[tag=SRST] as @a run scoreboard players set #StageRandomSwitch22 counter 0
execute if entity @a[tag=SRST] as @a run setblock 1009 63 57 stone

execute if entity @a[tag=SRSF] as @a run scoreboard players set #StageRandomSwitch22 counter 1
execute if entity @a[tag=SRSF] as @a run setblock 1009 63 57 redstone_block

tag @a remove SRST
tag @a remove SRSF