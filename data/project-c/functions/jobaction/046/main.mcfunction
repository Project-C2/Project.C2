#実行者     -> jobNumber = 46
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/046/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/046/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/046/replaceitem/3

tag @s[scores={deathCount=1..}] add 046-1
tag @s add 046
scoreboard players set @e[tag=046,tag=046-1] Mana 0
tag @e[tag=046,tag=046-1] remove 046-1
tag @s remove 046
execute unless entity @s[scores={Mana=1}] run effect give @s[scores={CT1=1200..}] minecraft:absorption 99999 2 true
execute unless entity @s[scores={Mana=1}] run effect give @s[scores={CT1=1200..}] minecraft:jump_boost 99999 1 true
execute unless entity @s[scores={Mana=1}] run effect give @s[scores={CT1=1200..}] minecraft:speed 99999 0 true
execute unless entity @s[scores={Mana=1}] run effect give @s[scores={CT1=1200..}] minecraft:resistance 99999 1 true
execute unless entity @s[scores={Mana=1}] run scoreboard players set @s Mana 1

execute if entity @s[scores={CT1=1200..},tag=SkillReady1,gamemode=!spectator,nbt={AbsorptionAmount:0f}] run function project-c:jobaction/046/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"パラス・ヘイロー\",\"color\":\"yellow\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/046/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"アポカリプティックサウンド\",\"color\":\"light_purple\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator,tag=Battle] run function project-c:jobaction/046/skill/3/0


scoreboard players reset @s sneak