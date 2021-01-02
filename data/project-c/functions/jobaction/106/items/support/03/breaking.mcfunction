#サポート6

scoreboard players remove @s counter_8 1


execute if score @s counter_8 matches 0 if score @s counter_2 matches 3 run function project-c:jobaction/106/items/support/03/set
execute if entity @s[gamemode=!spectator] if score @s counter_8 matches 0 if score @s counter_2 matches 3 at @s run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 1 0.7



execute if score @s counter_8 matches 0 run scoreboard players reset @s counter_8