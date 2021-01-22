#実行者     -> jobNumber = 91
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/091/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/091/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/091/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"マークスマン\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={useCarrotStick=1..,counter_1=0,counter_2=0,counter_4=0},gamemode=!spectator] run function project-c:jobaction/091/skill/0/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"マークスマン\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={useCarrotStick=1..,counter_1=21..,counter_4=0},gamemode=!spectator] run function project-c:jobaction/091/skill/0/1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"バリケード\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,tag=Battle,gamemode=!spectator] run function project-c:jobaction/091/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ニューマティックサージ\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/091/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"モービルフォートレス\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/091/skill/3/0


execute if entity @s[scores={counter_1=1..499}] run scoreboard players add @s counter_1 1
execute if entity @s[scores={counter_1=1..499,subcounter=1}] run scoreboard players add @s counter_1 1
execute if entity @s[scores={counter_1=1..}] run particle minecraft:crit ^ ^1 ^ 0.5 0.5 0.5 1 2 force
execute if entity @s[scores={counter_1=1..60}] run effect give @s slowness 1 0
execute if entity @s[scores={counter_1=61..120}] run effect give @s slowness 1 1
execute if entity @s[scores={counter_1=121..180}] run effect give @s slowness 1 2
execute if entity @s[scores={counter_1=181..240}] run effect give @s slowness 1 3
execute if entity @s[scores={counter_1=241..300}] run effect give @s slowness 1 4
execute if entity @s[scores={counter_1=301..360}] run effect give @s slowness 1 5
execute if entity @s[scores={counter_1=361..420}] run effect give @s slowness 1 6
execute if entity @s[scores={counter_1=421..}] run effect give @s slowness 1 7

execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/091/skill/0/2
execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/091/skill/0/2

execute if entity @s[scores={OutCombat=..240}] run scoreboard players remove @s CT2 1

execute if entity @s[scores={counter_4=1}] run particle minecraft:crit ~ ~1 ~ 0.4 0.4 0.4 1 10
execute if entity @s[scores={counter_4=1}] run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 2 1
execute if entity @s[scores={counter_4=1..}] run scoreboard players remove @s counter_4 1


execute if entity @s[scores={subcounter=1}] run effect give @s slowness 1 3 true
execute if entity @s[scores={subcounter=1}] run effect give @s jump_boost 1 128 true
execute if entity @s[scores={subcounter=1}] run effect give @s resistance 1 0 true

scoreboard players set @s sneak 0
scoreboard players reset @s useCarrotStick
scoreboard players reset @s useSnowball