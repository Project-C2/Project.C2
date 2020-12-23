#スキル6

execute if score @s Mana matches 1.. run scoreboard players remove @s Mana 1
particle block prismarine ~ ~1 ~ 0.2 0.3 0.2 0 1 force @a

execute if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s Mana 0
execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @s Mana 0
execute if score @s deathCount matches 1.. run scoreboard players set @s Mana 0
execute if score @s Mana matches 0 run effect clear @s resistance
execute if score @s Mana matches 0 run scoreboard players reset @s Mana