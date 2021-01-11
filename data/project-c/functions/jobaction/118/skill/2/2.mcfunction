scoreboard players set #118-- counter_1 1200
scoreboard players set #118-- counter_2 1200

scoreboard players operation #118-- counter_1 -= @s CT1
scoreboard players operation #118-- counter_2 -= @a[tag=118-2--,limit=1] CT1

scoreboard players operation #118-- counter_1 += #118-- counter_2
scoreboard players operation #118-- counter_1 /= #2 counter
scoreboard players set #118-- counter_2 1200
scoreboard players operation #118-- counter_2 -= #118-- counter_1

scoreboard players operation @s CT1 = #118-- counter_2
execute as @a[tag=118-2--] run scoreboard players operation @s CT1 = #118-- counter_2



scoreboard players set #118-- counter_1 1200
scoreboard players set #118-- counter_2 1200

scoreboard players operation #118-- counter_1 -= @s CT2
scoreboard players operation #118-- counter_2 -= @a[tag=118-2--,limit=1] CT2

scoreboard players operation #118-- counter_1 += #118-- counter_2
scoreboard players operation #118-- counter_1 /= #2 counter
scoreboard players set #118-- counter_2 1200
scoreboard players operation #118-- counter_2 -= #118-- counter_1

scoreboard players operation @s CT2 = #118-- counter_2
execute as @a[tag=118-2--] run scoreboard players operation @s CT2 = #118-- counter_2



scoreboard players set #118-- counter_1 1200
scoreboard players set #118-- counter_2 1200

scoreboard players operation #118-- counter_1 -= @s CT3
scoreboard players operation #118-- counter_2 -= @a[tag=118-2--,limit=1] CT3

scoreboard players operation #118-- counter_1 += #118-- counter_2
scoreboard players operation #118-- counter_1 /= #2 counter
scoreboard players set #118-- counter_2 1200
scoreboard players operation #118-- counter_2 -= #118-- counter_1

scoreboard players operation @s CT3 = #118-- counter_2
execute as @a[tag=118-2--] run scoreboard players operation @s CT3 = #118-- counter_2




execute if entity @s[scores={CT1=..1199},tag=SkillReady1] run tag @s remove SkillReady1
execute if entity @s[scores={CT2=..1199},tag=SkillReady2] run tag @s remove SkillReady2
execute if entity @s[scores={CT3=..1199},tag=SkillReady3] run tag @s remove SkillReady3


execute as @a[tag=118-2--,scores={CT1=..1199},tag=SkillReady1] run tag @s remove SkillReady1
execute as @a[tag=118-2--,scores={CT2=..1199},tag=SkillReady2] run tag @s remove SkillReady2
execute as @a[tag=118-2--,scores={CT3=..1199},tag=SkillReady3] run tag @s remove SkillReady3




scoreboard players reset #118--