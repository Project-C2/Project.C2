#実行者     -> jobNumber = 111
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

function project-c:jobaction/111/reloadactbar

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Blast","color":"dark_purple","italic":false}'}}}},scores={useCarrotStick=1..,counter_1=1..,counter_3=0},gamemode=!spectator] run function project-c:jobaction/111/skill/0/0

execute if entity @s[scores={counter=99}] run scoreboard players set @s counter_1 6

execute if entity @s[scores={counter=99}] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter=99}] run particle crit ~ ~1 ~ 0 0 0 0.3 30
execute if entity @s[scores={counter=..99}] run scoreboard players add @s counter 1

execute if entity @s[scores={counter_2=1..}] run effect give @s speed 1 0 true
execute if entity @s[scores={counter_2=1..}] run effect give @s minecraft:invisibility 1 0 true
execute if entity @s[scores={counter_2=1..}] run scoreboard players remove @s counter_2 1
execute if entity @s[scores={counter_2=1}] run function project-c:jobaction/111/skill/2/1

execute if entity @s[scores={counter_3=1..}] run scoreboard players add @s counter_3 1
execute if entity @s[scores={counter_3=11}] run function project-c:jobaction/111/skill/3/1
execute if entity @s[scores={counter_3=7..,adDealt=1..}] run function project-c:jobaction/111/skill/3/2
execute if entity @s[scores={counter_3=21..}] run scoreboard players set @s counter_3 0

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/111/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/111/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/111/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Dynamite Toss","color":"dark_purple","italic":false}'}}}},scores={useCarrotStick=1..,CT1=1200..},gamemode=!spectator] run function project-c:jobaction/111/skill/1/0

execute if entity @s[scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/111/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Lights Out","color":"dark_purple","italic":false}'}}}},scores={useCarrotStick=1..,CT3=1200..},gamemode=!spectator] run function project-c:jobaction/111/skill/3/0

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={adDealt=1..}] adDealt