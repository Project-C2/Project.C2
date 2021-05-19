particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 100 force @a
execute if entity @s[tag=Tier1] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 0
execute if entity @s[tag=Tier1] run scoreboard players add @a[tag=relic13_active,limit=1] CT1 40
execute if entity @s[tag=Tier1] run scoreboard players add @a[tag=relic13_active,limit=1] CT2 40
execute if entity @s[tag=Tier1] run scoreboard players add @a[tag=relic13_active,limit=1] CT3 40
execute if entity @s[tag=Tier2] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 0.9
execute if entity @s[tag=Tier2] run scoreboard players add @a[tag=relic13_active,limit=1] CT1 80
execute if entity @s[tag=Tier2] run scoreboard players add @a[tag=relic13_active,limit=1] CT2 80
execute if entity @s[tag=Tier2] run scoreboard players add @a[tag=relic13_active,limit=1] CT3 80
execute if entity @s[tag=Tier2] run effect give @a[tag=relic13_active,limit=1] minecraft:regeneration 1 3
execute if entity @s[tag=Tier3] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 1
execute if entity @s[tag=Tier3] run scoreboard players add @a[tag=relic13_active,limit=1] CT1 160
execute if entity @s[tag=Tier3] run scoreboard players add @a[tag=relic13_active,limit=1] CT2 160
execute if entity @s[tag=Tier3] run scoreboard players add @a[tag=relic13_active,limit=1] CT3 160
execute if entity @s[tag=Tier3] run effect give @a[tag=relic13_active,limit=1] minecraft:instant_health 1 1
execute if entity @s[tag=Tier4] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 1.5
execute if entity @s[tag=Tier4] run scoreboard players add @a[tag=relic13_active,limit=1] CT1 300
execute if entity @s[tag=Tier4] run scoreboard players add @a[tag=relic13_active,limit=1] CT2 300
execute if entity @s[tag=Tier4] run scoreboard players add @a[tag=relic13_active,limit=1] CT3 300
execute if entity @s[tag=Tier4] run effect give @a[tag=relic13_active,limit=1] minecraft:instant_health 1 1
execute if entity @s[tag=Tier4] run effect give @a[tag=relic13_active,limit=1] minecraft:regeneration 1 3
execute if entity @s[tag=Tier5] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 2
execute if entity @s[tag=Tier5] run scoreboard players set @a[tag=relic13_active,limit=1] CT1 1200
execute if entity @s[tag=Tier5] run scoreboard players set @a[tag=relic13_active,limit=1] CT2 1200
execute if entity @s[tag=Tier5] run scoreboard players set @a[tag=relic13_active,limit=1] CT3 1200
execute if entity @s[tag=Tier5] run effect give @a[tag=relic13_active,limit=1] minecraft:instant_health 1 2
tag @a[tag=relic13_active] remove relic13_active
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 3 force @a
kill @s