scoreboard players set @s counter_5 1

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick

particle minecraft:explosion ^ ^1.2 ^0.5 0 0 0 1 0 force @a
playsound minecraft:block.iron_door.close master @a ~ ~ ~ 2 2
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2