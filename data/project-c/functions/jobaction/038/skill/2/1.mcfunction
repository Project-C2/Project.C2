scoreboard players add @s counter_2 1
execute if entity @s[scores={counter_2=51}] run me 「十三拘束解放───円卓議決開始！」
execute if entity @s[scores={counter_2=101}] run function project-c:jobaction/038/skill/2/syounin
execute if entity @s[scores={counter_2=101}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.45
execute if entity @s[scores={counter_2=201}] run me 「此れは、世界を救う戦いである。」
execute if entity @s[scores={counter_2=201}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 1.75
execute if entity @s[scores={counter_2=251}] run function project-c:jobaction/038/skill/2/arthur
execute if entity @s[scores={counter_2=301}] run me 「エクスカリバー！！！！！」
execute if entity @s[scores={counter_2=301}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 3 2
execute if entity @s[scores={counter_2=351}] run function project-c:jobaction/038/skill/2/2
execute if entity @s[scores={counter_2=201..}] run particle minecraft:poof ~ ~ ~ 0.5 0 0.5 0.2 2
execute if entity @s[scores={counter_2=201..}] run particle minecraft:instant_effect ~ ~ ~ 2 1 2 0.01 10
execute if entity @s[scores={counter_2=101..}] run particle minecraft:end_rod ~ ~1 ~ 1.5 1 1.5 0.01 2
execute if entity @s[scores={counter_2=1..}] run particle cloud ~ ~0.3 ~ 1 0 1 0.1 4
execute if entity @s[scores={counter_2=1..}] run teleport @s @s
execute if entity @s[scores={counter_2=1..101}] run title @s actionbar ["",{"text":"十三拘束:","bold":true,"color":"gold"},{"text":"0","bold":true,"underlined":true,"color":"white"}]
execute if entity @s[scores={counter_2=101..}] run title @s actionbar ["",{"text":"十三拘束:","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"counter_3"},"bold":true,"underlined":true,"color":"white"}]
execute if entity @s[scores={counter_2=1..,deathCount=1}] run me 「すまない...」
execute if entity @s[scores={counter_2=1..,deathCount=1}] run scoreboard players reset @s counter_2
execute if entity @s[scores={counter_2=351..}] run scoreboard players reset @s counter_2
execute if entity @s[scores={counter_2=1..}] run scoreboard players set @s CT2 0
execute if entity @s[scores={counter_2=1..,counter_3=12..}] run particle minecraft:dust 1 1 0 3 ~ ~0.5 ~ 1 1 1 0 1 force @a
