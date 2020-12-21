#実行者     -> jobNumber = 108-n-
#実行地点   -> 実行者
#give @p shulker_shell{display:{Name:"{\"text\":\"グローブ\",\"italic\":\"false\"}",Lore:['{"text":"ちぇる★っとした雰囲気を感じる。","italic":"false","color":"white"}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1,1,1,1],Slot:"mainhand"}]} 1

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/108/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/108/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/108/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"\"}"}}}},scores={CT1=1200..,score=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/108/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"\"}"}}}},scores={CT2=1200..,score=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/00-n-/skill/2/0
#execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"\"}"}}}},scores={CT3=1200..,score=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/00-n-/skill/3/0




scoreboard players reset @s score