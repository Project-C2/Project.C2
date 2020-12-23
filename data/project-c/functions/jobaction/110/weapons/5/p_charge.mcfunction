execute if score @s sneak matches 1..60 run effect give @s slowness 1 6 true
execute if score @s sneak matches 1 run title @s times 2 70 2
execute if score @s sneak matches 1 run title @s subtitle {"text":"reloading","color":"gold"}
execute if score @s sneak matches 1 run title @s title ""
execute if score @s sneak matches 1 run playsound minecraft:item.armor.equip_netherite master @a ~ ~ ~ 1.2 0.5
execute if score @s sneak matches 20 run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 0.7
execute if score @s sneak matches 40 run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 0.7
execute if score @s sneak matches 10 run title @s subtitle {"text":"reloading.","color":"gold"}
execute if score @s sneak matches 10 run title @s title ""
execute if score @s sneak matches 20 run title @s subtitle {"text":"reloading..","color":"gold"}
execute if score @s sneak matches 20 run title @s title ""
execute if score @s sneak matches 30 run title @s subtitle {"text":"reloading...","color":"gold"}
execute if score @s sneak matches 30 run title @s title ""
execute if score @s sneak matches 40 run title @s subtitle {"text":"reloading....","color":"gold"}
execute if score @s sneak matches 40 run title @s title ""
execute if score @s sneak matches 50 run title @s subtitle {"text":"reloading.....","color":"gold"}
execute if score @s sneak matches 50 run title @s title ""
execute if score @s sneak matches 60 run title @s subtitle {"text":"reloading......","color":"gold"}
execute if score @s sneak matches 60 run title @s title ""
execute if score @s sneak matches 70 run function project-c:jobaction/110/weapons/5/p_reload
