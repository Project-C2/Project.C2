#実行者     -> jobNumber = 026
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/026/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/026/replaceitem/2
execute if entity @s[scores={CT3=1203..},tag=!SkillReady3] run function project-c:jobaction/026/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"水神様の加護\"}"}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/026/skill/1/0
execute if entity @s[scores={CT2=1200..,drop=1..,subcounter=2},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/026/skill/2/0g
execute if entity @s[scores={CT2=1200..,drop=1..,subcounter=3},tag=SkillReady2,gamemode=!spectator] as @s run function project-c:jobaction/026/skill/2/0s
execute if entity @s[scores={CT3=1203..,drop=1..,subcounter=1},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/026/skill/3/0

execute if entity @s[scores={subcounter=0..}] run scoreboard players reset @s subcounter
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"\"古びた斧\""}}}},gamemode=!spectator] run scoreboard players set @s subcounter 1
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"金の斧\",\"color\":\"gold\",\"underlined\":true,\"italic\":false}"}}}},gamemode=!spectator] run scoreboard players set @s subcounter 2
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"銀の斧\",\"color\":\"gray\",\"underlined\":true,\"italic\":false}"}}}},gamemode=!spectator] run scoreboard players set @s subcounter 3
scoreboard players reset @s sneak