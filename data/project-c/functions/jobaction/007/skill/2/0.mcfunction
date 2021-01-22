scoreboard players set @s CT2 1040


execute if entity @s[scores={counter_1=0}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter_1=0}] run particle poof ~ ~1 ~ 0 0 0 0.1 20

execute if entity @s[scores={counter_1=1}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
execute if entity @s[scores={counter_1=1}] run particle poof ~ ~1 ~ 0 0 0 0.1 40

execute if entity @s[scores={counter_1=2}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={counter_1=2}] run particle poof ~ ~1 ~ 0 0 0 1 600

execute if entity @s[team=Red] run data merge entity @e[type=minecraft:snowball,distance=..5,sort=nearest,limit=1] {Tags:["Red","IceElement"]}
execute if entity @s[team=Blue] run data merge entity @e[type=minecraft:snowball,distance=..5,sort=nearest,limit=1] {Tags:["Blue","IceElement"]}

scoreboard players operation @e[tag=IceElement,limit=1,sort=nearest] counter_1 = @s counter_1

data merge block -35 2 -122 {auto:1b}


scoreboard players set @s counter 0
scoreboard players set @s counter_1 0
replaceitem entity @s hotbar.4 minecraft:end_crystal{display:{Name:"{\"text\":\"チャージ\"}",Lore:["{\"text\":\"1~3段階までチャージできる。\"}"]}} 1

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2