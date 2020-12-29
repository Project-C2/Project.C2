#クロスボウ使用時の矢のnbt変更



execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged,tag=!106_weapon5_charged-r] as @e[tag=106-setup] store result entity @s damage double 0.01 run data get entity @s damage 55
execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged,tag=106_weapon5_charged-r] as @e[tag=106-setup] store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 120
execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged,tag=106_weapon5_charged-r] as @e[tag=106-setup] store result entity @s Motion[1] double 0.01 run data get entity @s Motion[1] 120
execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged,tag=106_weapon5_charged-r] as @e[tag=106-setup] store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 120
execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged,tag=106_weapon5_charged-r] as @e[tag=106-setup] run data merge entity @s {PierceLevel:1b,crit:0b}
execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged,tag=106_weapon5_charged-r] as @e[tag=106-setup] run tag @s add 106_weapon5--
execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged,tag=106_weapon5_charged-r] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 2

execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged] run tag @s add 106_weapon5_change
execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged] run function project-c:jobaction/106/items/weapon/05/set

execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged] run tag @s remove 106_weapon5_charged
execute if score #106_has_item counter matches 5 if entity @s[tag=106_weapon5_charged-r] run tag @s remove 106_weapon5_charged-r
