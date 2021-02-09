#実行者     -> jobNumber = 00-n-
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


effect give @s[scores={Mana=1}] minecraft:strength 1 3
execute if entity @s[scores={Mana=1}] run function project-c:general/effect/checkeffect
effect give @s[scores={Mana=2}] minecraft:resistance 1 1
effect give @s[scores={Mana=3}] minecraft:speed 1 1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/065/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/065/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/065/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"モナド＝機械仕掛けの神剣\",\"color\":\"red\",\"italic\":false,\"underlined\":true}"}}}},scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/065/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ビジョン＝未来視\",\"color\":\"aqua\",\"italic\":false,\"underlined\":true}"}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/065/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"エアスラッシュ\",\"color\":\"light_purple\",\"italic\":false,\"underlined\":true}"}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/065/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"スリットエッジ\",\"color\":\"blue\",\"italic\":false,\"underlined\":true}"}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/065/skill/3/0

effect clear @s[tag=065jump,nbt={OnGround:1b}] jump_boost
tag @s[tag=065jump,nbt={OnGround:1b}] remove 065jump

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick