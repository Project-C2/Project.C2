#実行者     -> jobNumber = 122
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={counter_5=1..}] run function project-c:jobaction/122/beamactbar
execute if entity @s[scores={counter_5=1..}] run effect give @s slowness 1 5 true

execute if entity @s[scores={counter_5=1..}] run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 1 1
execute if entity @s[scores={counter_5=1..165}] run scoreboard players add @s counter_5 1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/122/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/122/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/122/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"サイコボール","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT1=1200..},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/122/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"サイコソード","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT2=1200..},gamemode=!spectator,tag=SkillReady2,tag=Battle] run function project-c:jobaction/122/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"サイコビーム","color":"light_purple","italic":false}'}}}},scores={useCarrotStick=1..,CT3=1200..,counter_5=0},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/122/skill/3/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"サイコビーム","color":"light_purple","italic":false}'}}}},scores={useCarrotStick=1..,CT3=1200..,counter_5=1..},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/122/skill/3/1


execute if entity @s[scores={subcounter=0},tag=Battle] run function project-c:jobaction/122/phyco/play
execute if entity @s[scores={subcounter=0},tag=Battle] run scoreboard players set @s nbs_phyco 0
execute if entity @s[scores={subcounter=0},tag=Battle] run scoreboard players set @s subcounter 1

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={adDealt=1..}] adDealt