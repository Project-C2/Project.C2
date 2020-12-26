scoreboard players set @s CT1 1160
tellraw @s ["",{"text":"[隠しスキル] ","color":"yellow"},{"text":"トロピカルウェーブ","color":"#33aaff","bold":true,"underlined":true,"italic":false},{"text":" を獲得しました。"}]
particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 1 4 force @a
particle minecraft:dust 0.4 0.7 1 4 ~ ~ ~ 3 3 3 1 300 force @a
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 4 1
effect give @s glowing 5 0 true
clear @s water_bucket
clear @s heart_of_the_sea

scoreboard players set @s counter_6 1
tag @s remove SkillReady1
