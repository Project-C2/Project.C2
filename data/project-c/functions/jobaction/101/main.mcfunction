#実行者     -> jobNumber = 101
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={counter_1=1..}] run function project-c:jobaction/101/reloadactbar
execute if entity @s[scores={counter_5=1..}] run function project-c:jobaction/101/steadyactbar

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Snipe","color":"dark_purple","italic":false}'}}}},scores={useCarrotStick=1..,counter_1=0,counter_3=0,counter_5=0},gamemode=!spectator] run function project-c:jobaction/101/skill/0/0

execute if entity @s[scores={counter_2=1..}] run scoreboard players add @s counter_2 1
execute if entity @s[scores={counter_2=12..}] run scoreboard players set @s counter_2 1


execute if entity @s[scores={counter_3=1}] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_3=1..}] run scoreboard players remove @s counter_3 1


execute if entity @s[scores={counter_5=1..}] run effect give @s jump_boost 1 128 true
execute if entity @s[scores={counter_5=1..}] run effect give @s slowness 1 7 true
execute if entity @s[scores={counter_5=1..}] run particle minecraft:dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 1 1
execute if entity @s[scores={counter_5=1..165}] run scoreboard players add @s counter_5 1


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/101/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/101/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/101/replaceitem/3


execute if entity @s[scores={useCarrotStick=1..,counter_1=1,counter_2=1..},gamemode=!spectator] run function project-c:jobaction/101/skill/4/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Steady Aim","color":"dark_purple","italic":false}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=0,counter_3=0,counter_5=0},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/101/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Steady Aim","color":"dark_purple","italic":false}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=0,counter_3=0,counter_5=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/101/skill/1/1

execute if entity @s[scores={CT1=1200..,counter_1=0,counter_3=0,counter_5=165..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/101/skill/1/1

execute if entity @s[scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/101/skill/2/0


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Spotter: SCAN","color":"light_purple","italic":false}'}}}},scores={useCarrotStick=1..,CT3=1200..},gamemode=!spectator] run function project-c:jobaction/101/skill/3/0

execute if entity @s[scores={deathCountExt=1..}] run execute as @e[tag=101spotter] if score @s playerNumber = @a[limit=1,sort=nearest] playerNumber run kill @s

execute if entity @s[scores={subcounter=1}] run effect clear @s levitation
scoreboard players remove @s[scores={subcounter=1..}] subcounter 1
execute if entity @s[scores={subcounter=1..}] run execute as @e[tag=101back,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=101,subcounter=1..},limit=1,sort=nearest] ~ ~ ~

execute if entity @e[tag=101fire,type=arrow] run summon minecraft:area_effect_cloud ^ ^ ^ {Radius:0.1f,Duration:1,Tags:["101bulleteffect"]}

execute if entity @e[type=area_effect_cloud,tag=101bulleteffect] store result entity @e[type=area_effect_cloud,tag=101bulleteffect,limit=1] Rotation[0] float 0.01 run scoreboard players get @e[tag=101fire,limit=1] counter_1
execute if entity @e[type=area_effect_cloud,tag=101bulleteffect] store result entity @e[type=area_effect_cloud,tag=101bulleteffect,limit=1] Rotation[1] float 0.01 run scoreboard players get @e[tag=101fire,limit=1] counter_2

execute if entity @e[type=area_effect_cloud,tag=101bulleteffect] run execute positioned as @e[tag=101fire,type=arrow] rotated as @e[type=area_effect_cloud,tag=101bulleteffect] run particle minecraft:dust 1 0.7 1 1 ^ ^ ^ ~ ~ ~ 1 0 force @a
execute if entity @e[type=area_effect_cloud,tag=101bulleteffect] run execute positioned as @e[tag=101fire,type=arrow] rotated as @e[type=area_effect_cloud,tag=101bulleteffect] run particle minecraft:dust 1 0.7 1 1 ^ ^ ^-2 ~ ~ ~ 1 0 force @a
execute if entity @e[type=area_effect_cloud,tag=101bulleteffect] run execute positioned as @e[tag=101fire,type=arrow] rotated as @e[type=area_effect_cloud,tag=101bulleteffect] run particle minecraft:dust 1 0.7 1 1 ^ ^ ^-4 ~ ~ ~ 1 0 force @a
execute if entity @e[type=area_effect_cloud,tag=101bulleteffect] run execute positioned as @e[tag=101fire,type=arrow] rotated as @e[type=area_effect_cloud,tag=101bulleteffect] run particle minecraft:dust 1 0.7 1 1 ^ ^ ^-6 ~ ~ ~ 1 0 force @a
execute if entity @e[type=area_effect_cloud,tag=101bulleteffect] run execute positioned as @e[tag=101fire,type=arrow] rotated as @e[type=area_effect_cloud,tag=101bulleteffect] run particle minecraft:dust 1 0.7 1 1 ^ ^ ^-8 ~ ~ ~ 1 0 force @a

kill @e[type=area_effect_cloud,tag=101bulleteffect]

execute if entity @e[type=arrow,tag=101fire,limit=1] run scoreboard players add @e[type=arrow,tag=101fire,limit=1] counter 1
kill @e[type=arrow,tag=101fire,limit=1,scores={counter=41..}]
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
