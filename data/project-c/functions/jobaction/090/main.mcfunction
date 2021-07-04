#実行者     -> jobNumber = 90
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/090/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/090/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/090/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"エンゲイジ","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/090/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"コンカー","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,useSnowball=1..,OutCombat=240..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/090/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ウィスパーズオブマッドネス","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,useSnowball=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/090/skill/3/0

execute if entity @s[scores={useSnowball=1..}] run item replace entity @s weapon.offhand with minecraft:snowball
execute if entity @s[scores={useSnowball=1..}] run kill @e[type=snowball,limit=1,sort=nearest]


scoreboard players remove @s[scores={counter_1=1..}] counter_1 1
execute if entity @s[scores={counter_1=1..}] run execute as @e[tag=090fire,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=90,counter_1=1..},limit=1,sort=nearest] ~ ~ ~

scoreboard players set @s sneak 0
scoreboard players reset @s useCarrotStick
scoreboard players reset @s useSnowball