#実行者     -> jobNumber = 2
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/002/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/002/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/002/replaceitem/3

tag @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"グランドクラッシュ\"}"}}}},scores={jump=1..}] add canGC
execute unless entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"グランドクラッシュ\"}"}}}}] run tag @s remove canGC

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"パワーストライク\"}"}}}},scores={CT1=1200..,damageDealt=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/002/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"グランドクラッシュ\"}"}}}},scores={CT2=1200..,fall=1..},tag=SkillReady2,tag=canGC,gamemode=!spectator] run function project-c:jobaction/002/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"覚醒\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/002/skill/3/0

execute unless entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"グランドクラッシュ\"}"}}}}] run effect clear @s minecraft:jump_boost
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"グランドクラッシュ\"}"}}}}] run effect give @s minecraft:jump_boost 1 2 true

scoreboard players reset @s sneak
scoreboard players reset @s damageDealt
scoreboard players reset @s fall
scoreboard players reset @s jump