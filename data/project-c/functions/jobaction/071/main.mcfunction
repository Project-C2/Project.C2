#実行者     -> jobNumber = 71
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/071/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/071/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/071/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"弾丸装填\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/071/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"グラスレイド\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,jump=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/071/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"霊峰の呼び掛け\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,jump=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/071/skill/3/0



scoreboard players add @s[scores={sneak=1..,Mana=..299},gamemode=!spectator] Mana 1

effect give @s[scores={sneak=1..,Mana=..299},gamemode=!spectator] minecraft:slowness 1 3 true

execute as @s[scores={Mana=..299,sneak=1..},gamemode=!spectator] at @s run particle enchant ~ ~1.5 ~ 0 0 0 3 5

scoreboard players set @s[scores={Mana=..0}] Mana 0

title @s actionbar ["",{"text":"風の力:","bold":true,"color":"green"},{"score":{"name":"@s","objective":"Mana"},"bold":true,"underlined":true,"color":"white"}]

execute as @s[scores={Mana=100..199},gamemode=!spectator] at @s run particle cloud ~ ~1.5 ~ 0.5 0.5 0.5 0.1 1

execute as @s[scores={Mana=200..299},gamemode=!spectator] at @s run particle cloud ~ ~1 ~ 1 1 1 0.1 1

execute as @s[scores={Mana=300..},gamemode=!spectator] at @s run particle cloud ~ ~1 ~ 1 0 1 0.1 3

scoreboard players add @s[scores={sneak=0}] subcounter 1
scoreboard players remove @s[scores={Mana=..300,subcounter=7..},gamemode=!spectator] Mana 1
scoreboard players set @s[scores={sneak=0,subcounter=7..}] subcounter 0

scoreboard players set @s sneak 0
scoreboard players reset @s damageDealt
scoreboard players reset @s useLinger
scoreboard players reset @s crossbow
scoreboard players reset @s jump
scoreboard players reset @s useCarrotStick

scoreboard players set @s[scores={Mana=300..}] Mana 300