playsound minecraft:entity.player.levelup master @a ~ ~ ~ 4 1
scoreboard players set @s counter_5 36
function project-c:jobaction/102/skill/3/particle
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 1 400 normal @a
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 1 100 force @a
particle minecraft:firework ~ ~1 ~ 1 1 1 1 400 normal @a
particle minecraft:firework ~ ~1 ~ 1 1 1 1 100 force @a
