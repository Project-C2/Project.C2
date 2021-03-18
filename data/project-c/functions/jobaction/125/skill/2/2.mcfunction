scoreboard players add @s counter 1

particle minecraft:dust 1 0 1 1 ^ ^ ^ 0 0 0 1 5 force @a
execute if entity @s[scores={counter=11..}] run particle sweep_attack ~ ~ ~ 0 0 0 1 1 force @a
execute if entity @s[scores={counter=11..}] run particle end_rod ~ ~ ~ 0 0 0 0.4 3 force @a
execute if entity @s[scores={counter=11..}] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0
execute if entity @s[tag=122-swordDRed,tag=122swordD-Level1,scores={counter=11..}] run effect give @e[team=Blue,tag=Battle,distance=..1.5] instant_damage 1 0
execute if entity @s[tag=122-swordDBlue,tag=122swordD-Level1,scores={counter=11..}] run effect give @e[team=Red,tag=Battle,distance=..1.5] instant_damage 1 0


kill @s[scores={counter=11..}]