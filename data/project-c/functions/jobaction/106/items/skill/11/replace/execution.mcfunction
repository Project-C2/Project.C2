#スキル11

execute if entity @s[scores={counter_3=11}] run tag @s remove SkillDelay1
execute if entity @s[scores={counter_3=11,CT1=..1198}] run clear @s #project-c:neac/all{106_auxiliary_skill:11b}
execute if entity @s[scores={counter_3=11,CT1=..1198}] run function project-c:general/cooltimecounter

execute if entity @s[scores={counter_4=11}] run tag @s remove SkillDelay2
execute if entity @s[scores={counter_4=11,CT2=..1198}] run clear @s #project-c:neac/all{106_auxiliary_skill:11b}
execute if entity @s[scores={counter_4=11,CT2=..1198}] run function project-c:general/cooltimecounter

execute if entity @s[scores={counter_5=11}] run tag @s remove SkillDelay3
execute if entity @s[scores={counter_5=11,CT3=..1198}] run clear @s #project-c:neac/all{106_auxiliary_skill:11b}
execute if entity @s[scores={counter_5=11,CT3=..1198}] run function project-c:general/cooltimecounter


execute if entity @s[scores={counter_3=11,CT1=1199..}] run function project-c:jobaction/106/items/skill/10/set
execute if entity @s[scores={counter_4=11,CT2=1199..}] run function project-c:jobaction/106/items/skill/10/set
execute if entity @s[scores={counter_5=11,CT3=1199..}] run function project-c:jobaction/106/items/skill/10/set
