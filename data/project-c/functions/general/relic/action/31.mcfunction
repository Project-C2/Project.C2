execute if entity @s[scores={Selectsneak=1..,drop=1..}] run scoreboard players add @s relicCount 1
execute if entity @s[scores={relicCount=2..,drop=1..}] run scoreboard players set @s relicCount 0
execute if entity @s[scores={Selectsneak=1..,drop=1..}] run scoreboard players reset @s Selectsneak

execute if entity @s[scores={relicCount=0}] run effect give @s strength 1 0

execute if entity @s[scores={relicCount=0}] run scoreboard players remove @s CT1 1
execute if entity @s[scores={relicCount=0}] run scoreboard players remove @s CT2 1
execute if entity @s[scores={relicCount=0}] run scoreboard players remove @s CT3 1


execute if entity @s[scores={relicCount=1}] run effect give @s weakness 1 1

execute if entity @s[scores={relicCount=1}] run scoreboard players add @s CT1 1
execute if entity @s[scores={relicCount=1}] run scoreboard players add @s CT2 1
execute if entity @s[scores={relicCount=1}] run scoreboard players add @s CT3 1
