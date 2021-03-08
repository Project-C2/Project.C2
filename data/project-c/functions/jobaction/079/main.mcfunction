#実行者     -> jobNumber = 79
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/079/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/079/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/079/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"星遺物に至る鍵","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/079/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"星遺物に眠る深層","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/079/skill/2/0

execute if entity @s[scores={useSnowball=1..}] run kill @e[type=snowball,limit=1,distance=..5]
replaceitem entity @s[scores={useSnowball=1..}] weapon.offhand minecraft:snowball


scoreboard players add @s subcounter 1
execute if entity @s[scores={subcounter=2..},gamemode=!spectator] run function project-c:jobaction/079/skill/3/0
execute if entity @s[scores={subcounter=2..},gamemode=!spectator] run scoreboard players set @s subcounter 0

function project-c:jobaction/079/skill/3/1




scoreboard players set @s sneak 0
scoreboard players reset @s damageDealt
scoreboard players reset @s useLinger
scoreboard players reset @s crossbow
scoreboard players reset @s jump
scoreboard players reset @s useSnowball