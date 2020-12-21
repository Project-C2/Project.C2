#実行者     -> jobNumber = 58
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute as @e[tag=058-Arrow] at @s if score @s playerNumber = @a[scores={bow=1..},limit=1] playerNumber run scoreboard players remove @s counter 1
execute as @e[tag=058-Arrow,scores={counter=0}] at @s run kill @s

execute as @s[scores={bow=1..}] at @s run tag @e[type=arrow,distance=..6,limit=1,sort=nearest] add 058-Arrow
execute as @s[scores={bow=1..}] at @s run tag @e[type=arrow,distance=..6,limit=1,sort=nearest] add Arrow
execute as @s[scores={bow=1..}] at @s run data merge entity @e[tag=058-Arrow,sort=nearest,limit=1] {life:0,pickup:0b}
execute as @s[scores={bow=1..},team=Red] at @s run tag @e[tag=058-Arrow,type=arrow,limit=1,sort=nearest] add 058-ArrowR
execute as @s[scores={bow=1..},team=Blue] at @s run tag @e[tag=058-Arrow,type=arrow,limit=1,sort=nearest] add 058-ArrowB
execute as @s[scores={bow=1..}] at @s run scoreboard players operation @e[tag=058-Arrow,sort=nearest,limit=1] playerNumber = @s playerNumber
execute as @s[scores={bow=1..}] at @s run scoreboard players set @e[tag=058-Arrow,sort=nearest,limit=1] counter 3


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/058/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/058/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/058/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"トリックショット\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/058/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ボムチップ\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"true\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/058/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"フルパワーショット\",\"color\":\"yellow\",\"italic\":\"false\",\"underlined\":\"true\",\"bold\":\"true\"}"}}}},scores={CT3=1200..,bow=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/058/skill/3/0

execute as @s[scores={adDealt=1..,counter_1=..9}] at @s run scoreboard players add @s counter_1 1

execute if entity @s[scores={adDealt=1..,counter_1=..10}] run function project-c:jobaction/058/replaceitem/3
execute if entity @s[scores={adDealt=1..,counter_1=..10}] run function project-c:jobaction/058/replaceitem/4

effect give @s weakness 1 0 true

scoreboard players reset @s bow
scoreboard players reset @s adDealt
scoreboard players reset @s damageDealt
scoreboard players reset @s sneak