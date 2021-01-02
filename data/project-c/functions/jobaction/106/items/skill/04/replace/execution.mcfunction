#スキル4

execute if entity @s[scores={counter_3=4}] run tag @s remove SkillDelay1
execute if entity @s[scores={counter_4=4}] run tag @s remove SkillDelay2
execute if entity @s[scores={counter_5=4}] run tag @s remove SkillDelay3

execute if entity @s[scores={counter_3=4,CT1=..1199}] run clear @s #project-c:neac/all{106_auxiliary_skill:4b}
execute if entity @s[scores={counter_3=4,CT1=..1199}] run function project-c:general/cooltimecounter

execute if entity @s[scores={counter_4=4,CT2=..1199}] run clear @s #project-c:neac/all{106_auxiliary_skill:4b}
execute if entity @s[scores={counter_4=4,CT2=..1199}] run function project-c:general/cooltimecounter

execute if entity @s[scores={counter_5=4,CT3=..1199}] run clear @s #project-c:neac/all{106_auxiliary_skill:4b}
execute if entity @s[scores={counter_5=4,CT3=..1199}] run function project-c:general/cooltimecounter


execute if entity @s[scores={counter_3=4,CT1=1200..}] run function project-c:jobaction/106/items/skill/04/set
execute if entity @s[scores={counter_4=4,CT2=1200..}] run function project-c:jobaction/106/items/skill/04/set
execute if entity @s[scores={counter_5=4,CT3=1200..}] run function project-c:jobaction/106/items/skill/04/set
