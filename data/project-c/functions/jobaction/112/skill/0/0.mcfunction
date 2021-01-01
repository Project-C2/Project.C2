playsound minecraft:block.anvil.land master @a ~ ~ ~ 3 2
scoreboard players add @s subcounter 1
scoreboard players set @s[scores={subcounter=2..}] subcounter 0

execute if entity @s[scores={subcounter=0}] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 1 1 1 1 30
execute if entity @s[scores={subcounter=1}] run particle minecraft:dust 0 0 1 1 ~ ~1 ~ 1 1 1 1 30

execute if entity @s[scores={subcounter=0}] run title @s actionbar [{"text":"<<磁力状態 : 引き寄せ>>","bold":true,"color":"red"}]
execute if entity @s[scores={subcounter=1}] run title @s actionbar [{"text":"<<磁力状態 : 押し出し>>","bold":true,"color":"blue"}]