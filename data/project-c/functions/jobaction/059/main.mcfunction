#実行者     -> jobNumber = 59
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/059/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/059/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/059/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"常闇のショール\",\"color\":\"gray\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={useCarrotStick=1..,counter_1=1..},gamemode=!spectator] run function project-c:jobaction/059/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"常闇のショール\",\"color\":\"gray\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={useCarrotStick=1..,counter_2=1..},gamemode=!spectator] run function project-c:jobaction/059/skill/0/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"常闇のショール\",\"color\":\"gray\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={useCarrotStick=1..,counter_3=1..},gamemode=!spectator] run function project-c:jobaction/059/skill/0/0


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"通常攻撃 炎属性\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/059/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"通常攻撃 風属性\",\"color\":\"green\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/059/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"通常攻撃 水属性\",\"color\":\"aqua\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/059/skill/3/0

function project-c:jobaction/059/replaceitem/actbar
scoreboard players reset @s useCarrotStick