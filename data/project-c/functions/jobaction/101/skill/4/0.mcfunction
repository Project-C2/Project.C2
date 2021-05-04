scoreboard players operation @s counter_4 = @s counter_2


execute if entity @s[scores={counter_2=6..7}] run playsound minecraft:block.anvil.place master @a ~ ~ ~ 2 2
scoreboard players set @s counter_1 0
scoreboard players set @s counter_2 0
scoreboard players set @s counter_3 26
effect give @s slowness 1 5 true

particle minecraft:crit ^ ^1.2 ^ 0 0 0 0.5 20 force @a

playsound minecraft:block.iron_door.close master @a ~ ~ ~ 2 0
playsound minecraft:block.iron_door.close master @a ~ ~ ~ 2 1