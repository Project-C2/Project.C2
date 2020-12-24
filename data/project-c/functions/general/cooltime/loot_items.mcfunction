#execute as @a[tag=!SkillDelay1] run replaceitem entity @s[scores={CT1=0..3}] hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}}
data remove block 0 0 0 Items[]
data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"minecraft:compass",Count:1b,tag:{CT:0,display:{Name:'"CoolTime"'}}}

scoreboard players set #CT counter_2 1219

execute if score #CT counter matches 1 run scoreboard players operation #CT counter_2 -= @s CT1
execute if score #CT counter matches 2 run scoreboard players operation #CT counter_2 -= @s CT2
execute if score #CT counter matches 3 run scoreboard players operation #CT counter_2 -= @s CT3

scoreboard players operation #CT counter_2 /= #20 counter

execute if score #CT counter matches 1 run data modify block 0 0 0 Items[0].tag.CT set value 1
execute if score #CT counter matches 2 run data modify block 0 0 0 Items[0].tag.CT set value 2
execute if score #CT counter matches 3 run data modify block 0 0 0 Items[0].tag.CT set value 3
execute store result block 0 0 0 Items[0].Count byte 1 run scoreboard players get #CT counter_2

execute if score #CT counter matches 1 run loot replace entity @s container.1 1 mine 0 0 0 air{inv_copy:1b}
execute if score #CT counter matches 2 run loot replace entity @s container.2 1 mine 0 0 0 air{inv_copy:1b}
execute if score #CT counter matches 3 run loot replace entity @s container.3 1 mine 0 0 0 air{inv_copy:1b}

data remove block 0 0 0 Items[]
scoreboard players reset #CT
