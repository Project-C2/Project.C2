scoreboard players add @s stockcounter 1
scoreboard players remove @s counter_5 84
execute if entity @s[scores={stockcounter=15..,counter_5=..0}] run scoreboard players set @s counter_5 2
execute if entity @s[scores={stockcounter=5}] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.5 1.5
execute if entity @s[scores={stockcounter=10}] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.5 1.5
execute if entity @s[scores={stockcounter=15}] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.5 1.5
execute if entity @s[scores={stockcounter=5}] run particle minecraft:crit ~ ~0.4 ~ 1.2 0.4 1.2 0 200 normal @a
execute if entity @s[scores={stockcounter=10}] run particle minecraft:crit ~ ~0.4 ~ 1.2 0.4 1.2 0 200 normal @a
execute if entity @s[scores={stockcounter=15}] run particle minecraft:crit ~ ~0.4 ~ 1.2 0.4 1.2 0 200 normal @a
function project-c:jobaction/092/replaceitem/4
