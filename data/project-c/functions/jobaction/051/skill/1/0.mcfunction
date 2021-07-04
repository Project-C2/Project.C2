scoreboard players set @s CT1 1060
item replace entity @s hotbar.1 with minecraft:compass{display:{Name:'"CoolTime"'}} 7

summon minecraft:armor_stand ^ ^1.0 ^0.5 {Tags:["051_koore","051"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned ^ ^1.0 ^0.5 run tp @e[tag=051] ~ ~ ~ ~ ~
execute if entity @s[team=Red] run tag @e[tag=051] add 051_koore_red
execute if entity @s[team=Blue] run tag @e[tag=051] add 051_koore_blue
scoreboard players operation @e[tag=051] playerNumber = @s playerNumber
tag @s add 051_koore_p
effect give @s minecraft:slow_falling 1 0 true
effect give @s minecraft:slowness 1 9 true
tp @s @s
tag @e[tag=051] remove 051
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~0.0 ~ ~0.0 ^ ^ ^100000 0.00000100 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~0.1 ~ ~0.0 ^ ^ ^100000 0.00000121 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~0.0 ~ ~-0.1 ^ ^ ^100000 0.00000144 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~0.0 ~ ~0.1 ^ ^ ^100000 0.00000169 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~-0.1 ~ ~0.0 ^ ^ ^100000 0.00000196 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~0.0 ~ ~-0.1 ^ ^ ^100000 0.00000225 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~0.1 ~ ~0.0 ^ ^ ^100000 0.00000256 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~-0.1 ~ ~0.0 ^ ^ ^100000 0.00000289 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~0.0 ~ ~0.1 ^ ^ ^100000 0.00000324 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~0.02 ~ ~0.03 ^ ^ ^100000 0.00000361 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~-0.03 ~ ~-0.02 ^ ^ ^100000 0.00000400 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~-0.01 ~ ~0.01 ^ ^ ^100000 0.00000450 0 force @a
execute anchored eyes positioned ^ ^-0.6 ^0.5 run particle minecraft:end_rod ~0.02 ~ ~0.01 ^ ^ ^100000 0.00000500 0 force @a

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.7 2
data merge block -13 2 -20 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1