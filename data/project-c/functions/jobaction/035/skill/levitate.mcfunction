scoreboard players remove @s counter_2 1
function project-c:jobaction/035/setarrow
scoreboard players set @s counter 50
effect give @s minecraft:levitation 3 0
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
particle minecraft:firework ~ ~ ~ 1 1 1 0.1 40 normal @a
particle minecraft:firework ~ ~ ~ 1 1 1 0.1 10 force @a