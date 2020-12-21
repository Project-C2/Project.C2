scoreboard players set @s counter_2 1
tag @s add 043-2now
execute as @a if score @s playerNumber = @a[tag=043-2now,limit=1] subcounter facing entity @s feet run function project-c:jobaction/043/skill/2/1-compass
execute if score #043-dummy counter matches 1..15 if entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",tag:{043-powered:0b}}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b,043-powered:1b,Enchantments:[{id:"minecraft:sharpness",lvl:2s}]}
execute unless score #043-dummy counter matches 1..15 if entity @s[nbt={Inventory:[{id:"minecraft:iron_sword",tag:{043-powered:1b}}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b,043-powered:0b}
execute if entity @s[tag=Battle] unless score #043-dummy counter matches 1..15 run effect give @s minecraft:wither 1 1 true
execute if entity @s[tag=Battle] unless score #043-dummy counter matches 1..15 run particle minecraft:flame ~ ~ ~ 3 3 3 0 30 force @s
scoreboard players reset #043-dummy counter
tag @s remove 043-2now