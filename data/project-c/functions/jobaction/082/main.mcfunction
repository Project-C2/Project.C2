#実行者     -> jobNumber = 82
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/082/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/082/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/082/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"リローデッド\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/082/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"宿命のポルトラン\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/082/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"策略のコンパス\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/082/skill/3/0



execute as @s[scores={bow=1..}] at @s run tag @e[type=arrow,distance=..6,limit=1,sort=nearest,tag=!GrowArrow2] add 082-Arrow
execute as @s[scores={bow=1..}] at @s run tag @e[type=arrow,distance=..6,limit=1,sort=nearest,tag=!GrowArrow2] add Arrow
data merge entity @e[tag=082-Arrow,sort=nearest,limit=1] {life:0,pickup:0b,NoGravity:1b,Damage:0.0b}
scoreboard players operation @e[tag=082-Arrow,sort=nearest,limit=1] playerNumber = @s playerNumber

scoreboard players reset @s bow
scoreboard players set @s sneak 0
scoreboard players reset @s useCarrotStick