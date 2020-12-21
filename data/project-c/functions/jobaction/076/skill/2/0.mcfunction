#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1180

#スキル効果
#共通
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 3 0
scoreboard players add @s counter_2 1
scoreboard players set @s[scores={counter_2=2..}] counter_2 0

execute if entity @s[scores={counter_2=0}] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 60
execute if entity @s[scores={counter_2=0}] run tellraw @s ["",{"text":"\u06de "},{"text":"ブレイブモード","color":"gold"},{"text":" に変更しました"}]
execute if entity @s[scores={counter_2=1}] run particle minecraft:end_rod ~ ~1 ~ 1 1 1 0 60
execute if entity @s[scores={counter_2=1}] run tellraw @s ["",{"text":"\u06de "},{"text":"ジャッジメントモード","color":"yellow"},{"text":" に変更しました"}]
clear @s iron_sword
clear @s golden_sword
clear @s shield

function project-c:jobaction/076/replaceitem/0
execute if entity @s[scores={CT1=1200..}] run function project-c:jobaction/076/replaceitem/1

#リセット
tag @s remove SkillReady2
data merge block 1 2 31 {auto:1b}