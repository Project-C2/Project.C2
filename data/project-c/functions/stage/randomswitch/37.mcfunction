execute if block 991 63 57 minecraft:redstone_block as @a run tag @a add SRST
execute if block 991 63 57 minecraft:stone as @a run tag @a add SRSF

execute if entity @a[tag=SRST] as @a run scoreboard players set #StageRandomSwitch37 counter 0
execute if entity @a[tag=SRST] as @a run setblock 991 63 57 stone

execute if entity @a[tag=SRSF] as @a run scoreboard players set #StageRandomSwitch37 counter 1
execute if entity @a[tag=SRSF] as @a run setblock 991 63 57 redstone_block

tag @a remove SRST
tag @a remove SRSF