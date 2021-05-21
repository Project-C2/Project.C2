#デフォルト。ハート20個分
attribute @s minecraft:generic.max_health base set 40
#職毎に変更する際に追記してください
execute if entity @s[scores={jobNumber=28}] run attribute @s minecraft:generic.max_health base set 29
execute if entity @s[scores={jobNumber=46,counter_4=..0}] run attribute @s minecraft:generic.max_health base set 20
execute if entity @s[scores={jobNumber=46,counter_4=1..}] run attribute @s minecraft:generic.max_health base set 32
execute if entity @s[scores={jobNumber=54}] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[scores={jobNumber=62}] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[scores={jobNumber=74}] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[scores={jobNumber=77}] run attribute @s minecraft:generic.max_health base set 28
execute if entity @s[scores={jobNumber=88}] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[scores={jobNumber=89}] run attribute @s minecraft:generic.max_health base set 26
execute if entity @s[scores={jobNumber=92}] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[scores={jobNumber=93}] run attribute @s minecraft:generic.max_health base set 30
execute if entity @s[scores={jobNumber=121}] run attribute @s minecraft:generic.max_health base set 32
execute if entity @s[scores={jobNumber=125}] run attribute @s minecraft:generic.max_health base set 28
execute if entity @s[scores={jobNumber=128}] run attribute @s minecraft:generic.max_health base set 28