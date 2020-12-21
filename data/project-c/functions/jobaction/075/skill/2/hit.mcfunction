execute if score @s counter_2 matches 1001..1500 run effect give @e[tag=hit] resistance 1 0 true
execute if score @s counter_2 matches 501..1000 run effect give @e[tag=hit] resistance 1 1 true
execute if score @s counter_2 matches ..500 run effect give @e[tag=hit] resistance 1 2 true
execute if score @s counter_2 matches 1501.. run effect give @e[tag=hit] glowing 8 0
execute if score @s counter_2 matches 1001..1500 run effect give @e[tag=hit] glowing 6 0
execute if score @s counter_2 matches 501..1000 run effect give @e[tag=hit] glowing 4 0
execute if score @s counter_2 matches ..500 run effect give @e[tag=hit] glowing 2 0
effect give @e[tag=hit] instant_damage 1 0 true
effect give @e[tag=hit,distance=..1.5] instant_damage 1 2 true
effect give @e[tag=hit,distance=1.5..2.25] instant_damage 1 1 true
execute positioned ^ ^ ^0.75 run effect give @e[tag=hit,distance=..1.5] instant_damage 1 2 true
execute positioned ^ ^ ^0.75 run effect give @e[tag=hit,distance=1.5..2.25] instant_damage 1 1 true

execute if entity @a[tag=075crash_CT1regen,limit=1] run tag @s add is_075crash
execute if entity @s[tag=is_075crash] as @a[tag=075crash_CT1regen] if score @s playerNumber = @e[tag=is_075crash,limit=1] playerNumber run tag @s add this
execute if entity @a[tag=this,limit=1] run scoreboard players add @a[tag=this] CT1 100
execute if entity @a[tag=this,limit=1] run tag @a[tag=this] remove 075crash_CT1regen
execute if entity @a[tag=this,limit=1] run tag @a[tag=this] remove this
tag @s remove is_075crash

tag @e[tag=hit] remove hit

