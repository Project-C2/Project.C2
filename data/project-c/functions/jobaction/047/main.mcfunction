#実行者     -> jobNumber = 47
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={Mana=0}] run function project-c:jobaction/047/replaceitem/0
execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/047/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/047/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/047/replaceitem/3

replaceitem entity @s[scores={Mana=20..20}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 1
replaceitem entity @s[scores={Mana=40..40}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 2
replaceitem entity @s[scores={Mana=60..60}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 3
replaceitem entity @s[scores={Mana=80..80}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 4
replaceitem entity @s[scores={Mana=100..100}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 5
scoreboard players remove @s[scores={Mana=0..}] Mana 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:snowball"}}] run function project-c:jobaction/047/skill/1/1
execute as @e[tag=047-Houki2] at @s unless entity @e[distance=..3,tag=047-Houki] run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~
execute as @e[tag=047-Houki2] at @s unless entity @e[distance=..3,tag=047-Houki] run kill @s

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"イリュージョンレーザー","color":"gold","italic":"false","underlined":"true"}'}}}},scores={Mana=..0,useSnowball=1..},gamemode=!spectator] run function project-c:jobaction/047/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"魔法のほうき","color":"green","italic":"false","underlined":"true"}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/047/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"光撃「シュート・ザ・ムーン」","color":"yellow","italic":"false","underlined":"true"}'}}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/047/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"恋符「マスタースパーク」","color":"white","italic":"false","underlined":"true","bold":"true"}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator,tag=Battle] run function project-c:jobaction/047/skill/3/0

replaceitem entity @s[scores={useSnowball=1..}] weapon.offhand minecraft:snowball{display:{Name:'{"text":"魔法球","color":"gray","italic":false,"underlined":true}'},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1

scoreboard players reset @s sneak
scoreboard players reset @s useSnowball