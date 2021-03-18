#実行者     -> jobNumber = 125
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={counter_5=1..}] run function project-c:jobaction/125/rainactbar
execute if entity @s[scores={counter_5=1..}] run effect give @s slowness 1 1 true

execute if entity @s[scores={counter_5=1..}] run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 1 1

execute if entity @s[scores={counter_5=1..9}] run scoreboard players add @s counter_4 1


execute if entity @s[scores={counter_4=11..}] run scoreboard players add @s counter_5 1
execute if entity @s[scores={counter_4=11..}] run scoreboard players set @s counter_4 1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/125/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/125/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/125/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"レインボーブラスト","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT1=1200..,counter_5=0},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/125/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"レインボーブラスト","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT2=1200..,counter_5=1..},gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/125/skill/1/1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"サイコビーム","color":"light_purple","italic":false}'}}}},scores={useCarrotStick=1..,CT3=1200..,counter_5=0},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/125/skill/3/0




scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={adDealt=1..}] adDealt