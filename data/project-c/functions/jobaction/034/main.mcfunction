#実行者     -> jobNumber = 034
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/034/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/034/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/034/replaceitem/3

tag @s add 034-playerNumber

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"サンダーコメット\",\"color\":\"yellow\"}"}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/034/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ウルフマイスター\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/034/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"チェーンヘルハウンド\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/034/skill/3/0
execute if entity @e[tag=034-wolf,tag=!034-Sitting,nbt={Sitting:1b}] as @e[tag=034-wolf,tag=!034-Sitting,nbt={Sitting:1b}] run function project-c:jobaction/034/skill/0/-
execute if entity @e[tag=034-Sitting] as @e[tag=034-Sitting] run function project-c:jobaction/034/skill/0/0

execute if entity @e[tag=034-wolf,nbt=!{Fire:-1s}] as @e[tag=034-wolf,nbt=!{Fire:-1s}] run data merge entity @s {Fire:-1s}
execute if entity @e[tag=034-wolf,tag=!034-tamed,nbt=!{OwnerUUID:""}] as @e[tag=034-wolf,tag=!034-tamed,nbt=!{OwnerUUID:""}] run data merge entity @s {Attributes:[{Base:0.3d,Name:"generic.knockbackResistance"},{Base:0.45d,Name:"generic.movementSpeed"}],Tags:["034-tamed","Battle","034-wolf"]}

tag @s remove 034-playerNumber


scoreboard players reset @s sneak
