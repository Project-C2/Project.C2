scoreboard players add @s counter_3 1
execute at @s[scores={counter_3=20}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 0.75
execute at @s[scores={counter_3=20}] run particle minecraft:firework ~ ~1 ~ 5 5 5 0.5 100 force @a
execute at @s[scores={counter_3=20}] run particle minecraft:angry_villager ~ ~1 ~ 5 5 5 0.5 25 force @a
execute at @s[scores={counter_3=40}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 0.9
execute as @e[tag=025-3,sort=nearest,limit=1] at @s run teleport @s ~ ~ ~ ~18.5 ~
execute as @e[tag=025-3,sort=nearest,limit=1] at @s positioned ^ ^ ^10 facing entity @s feet run particle minecraft:flame ^ ^ ^ ^ ^ ^10000000 0.00000006 0 force
execute as @e[tag=025-3,sort=nearest,limit=1] at @s positioned ^ ^ ^-10 facing entity @s feet run particle minecraft:flame ^ ^ ^ ^ ^ ^10000000 0.00000006 0 force
execute as @e[tag=025-3,sort=nearest,limit=1] at @s positioned ^10 ^ ^ facing entity @s feet run particle minecraft:flame ^ ^ ^ ^ ^ ^10000000 0.00000006 0 force
execute as @e[tag=025-3,sort=nearest,limit=1] at @s positioned ^-10 ^ ^ facing entity @s feet run particle minecraft:flame ^ ^ ^ ^ ^ ^10000000 0.00000006 0 force
execute at @s[scores={counter_3=60..}] run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 2 2
execute at @s[scores={counter_3=70..,Mana=20..},team=Red] run effect give @e[distance=..10,tag=Battle,team=Blue] minecraft:instant_damage 1 0
execute at @s[scores={counter_3=70..,Mana=20..},team=Blue] run effect give @e[distance=..10,tag=Battle,team=Red] minecraft:instant_damage 1 0
execute at @s[scores={counter_3=70..,Mana=40..},team=Red] run effect give @e[distance=..10,tag=Battle,team=Blue] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=70..,Mana=40..},team=Blue] run effect give @e[distance=..10,tag=Battle,team=Red] minecraft:instant_damage 1 1
execute at @s[scores={counter_3=70..,Mana=60..},team=Red] run effect give @e[distance=..10,tag=Battle,team=Blue] minecraft:instant_damage 1 2
execute at @s[scores={counter_3=70..,Mana=60..},team=Blue] run effect give @e[distance=..10,tag=Battle,team=Red] minecraft:instant_damage 1 2
execute at @s[scores={counter_3=70..,Mana=100..},team=Red] run effect give @e[distance=..10,tag=Battle,team=Blue] minecraft:resistance 1 1 true
execute at @s[scores={counter_3=70..,Mana=100..},team=Red] run effect give @e[distance=..10,tag=Battle,team=Blue] minecraft:instant_damage 1 3 true
execute at @s[scores={counter_3=70..,Mana=100..},team=Blue] run effect give @e[distance=..10,tag=Battle,team=Red] minecraft:resistance 1 1 true
execute at @s[scores={counter_3=70..,Mana=100..},team=Blue] run effect give @e[distance=..10,tag=Battle,team=Red] minecraft:instant_damage 1 3 true
execute at @s[scores={counter_3=70..}] run particle minecraft:explosion ~ ~1 ~ 7 7 7 2 150 force @a
execute at @s[scores={counter_3=70..}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5 0
execute at @s[scores={counter_3=70..,Mana=100..},team=Red] run scoreboard players add @e[distance=..10,tag=Battle,team=Blue] stanTime 40
execute at @s[scores={counter_3=70..,Mana=100..},team=Blue] run scoreboard players add @e[distance=..10,tag=Battle,team=Red] stanTime 40
execute at @s[scores={counter_3=70..}] run tellraw @a ["",{"text":"*","bold":true},{"selector":"@s","bold":true},{"text":" \u6700\u5f8c\u306b\u3001\u308f\u3044\u306e\u6012\u308a\u30b2\u30fc\u30b8\u306f","bold":true},{"score":{"name":"@s","objective":"Mana"},"bold":true,"color":"dark_red"},{"text":"%\u3060\u3063\u305f","bold":true}]
scoreboard players set @s[scores={counter_3=70..}] Mana 0
scoreboard players reset @s[scores={counter_3=70..}] counter_3
execute as @s[scores={counter_3=1..}] at @s run teleport @s @s
execute at @s[scores={counter_3=40}] run kill @e[tag=025-3,sort=nearest,limit=1]
execute as @e[tag=025-3,sort=nearest,limit=1] at @s run teleport @s ~ ~ ~ ~18.5 ~
execute as @e[tag=025-3,sort=nearest,limit=1] at @s positioned ^ ^ ^10 facing entity @s feet run particle minecraft:flame ^ ^ ^ ^ ^ ^10000000 0.00000006 0 force
execute as @e[tag=025-3,sort=nearest,limit=1] at @s positioned ^ ^ ^-10 facing entity @s feet run particle minecraft:flame ^ ^ ^ ^ ^ ^10000000 0.00000006 0 force
execute as @e[tag=025-3,sort=nearest,limit=1] at @s positioned ^10 ^ ^ facing entity @s feet run particle minecraft:flame ^ ^ ^ ^ ^ ^10000000 0.00000006 0 force
execute as @e[tag=025-3,sort=nearest,limit=1] at @s positioned ^-10 ^ ^ facing entity @s feet run particle minecraft:flame ^ ^ ^ ^ ^ ^10000000 0.00000006 0 force
execute at @s[scores={jobNumber=25,counter_3=60..61}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 50 force
execute at @s[scores={jobNumber=25,counter_3=62..63}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.75 60 force
execute at @s[scores={jobNumber=25,counter_3=64..65}] run particle minecraft:flame ~ ~ ~ 0 0 0 1 70 force
execute at @s[scores={jobNumber=25,counter_3=66..67}] run particle minecraft:flame ~ ~ ~ 0 0 0 1.5 80 force
execute at @s[scores={jobNumber=25,counter_3=68..68}] run particle minecraft:flame ~ ~ ~ 0 0 0 2 1000 force
execute as @e[tag=025-3] at @s run particle dust 10000 0 0 10 ^ ^ ^10 0 0 0 0 1 force
execute as @e[tag=025-3] at @s run particle dust 10000 0 0 10 ^ ^ ^-10 0 0 0 0 1 force
execute as @e[tag=025-3] at @s run particle dust 10000 0 0 10 ^10 ^ ^ 0 0 0 0 1 force
execute as @e[tag=025-3] at @s run particle dust 10000 0 0 10 ^-10 ^ ^ 0 0 0 0 1 force