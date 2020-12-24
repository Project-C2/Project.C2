scoreboard players add @e[tag=110shulkerWall] counter 1
execute if entity @e[tag=110shulkerWall,scores={counter=205},limit=1] run effect give @e[tag=110shulkerWall,scores={counter=205}] minecraft:wither 1000000 5 true
execute if entity @e[tag=110shulkerWall,scores={counter=299..},limit=1] run kill @e[tag=110shulkerWall,scores={counter=299..}]