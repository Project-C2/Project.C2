scoreboard players add @s counter 1
particle minecraft:instant_effect ~ ~1 ~ 1 1 1 1 2 normal @a
particle minecraft:instant_effect ~ ~1 ~ 1 1 1 1 1 force @a
execute if score @s counter matches 21 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1.2 1
execute if score @s counter matches 21.. run particle minecraft:falling_dust oak_leaves ~ ~1 ~ 1 1 1 1 2 normal @a
execute if score @s counter matches 21.. run particle minecraft:falling_dust oak_leaves ~ ~1 ~ 1 1 1 1 1 force @a
execute if score @s counter matches 101.. run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 1
execute if score @s counter matches 101.. run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 1
execute if score @s counter matches 101.. run scoreboard players set @s counter 0