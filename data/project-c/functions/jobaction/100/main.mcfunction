#実行者     -> jobNumber = 100
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/100/replaceitem/1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"武神\",\"color\":\"green\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={useCarrotStick=1..,sneak=1..},gamemode=!spectator] run function project-c:jobaction/091/skill/0/0


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"バリケード\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,tag=Battle,gamemode=!spectator] run function project-c:jobaction/091/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ニューマティックサージ\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/091/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"モービルフォートレス\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/091/skill/3/0

execute if entity @s[scores={adDealt=1..}] run scoreboard players add @s MagicFatigue 1

scoreboard players set @s sneak 0
scoreboard players reset @s adDealt
scoreboard players reset @s useCarrotStick
scoreboard players reset @s useSnowball