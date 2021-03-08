scoreboard players set @s CT3 1040


execute if entity @s[scores={counter_1=0}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter_1=0}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 20

execute if entity @s[scores={counter_1=1}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1
execute if entity @s[scores={counter_1=1}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 30

execute if entity @s[scores={counter_1=2}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={counter_1=2}] run particle end_rod ~ ~1 ~ 0 0 0 0.1 400

tag @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..5] add ThunderElement
scoreboard players operation @e[tag=ThunderElement,sort=nearest,limit=1,distance=..5] counter_1 = @s counter_1

data merge block -33 2 -122 {auto:1b}


scoreboard players set @s counter 0
scoreboard players set @s counter_1 0
replaceitem entity @s hotbar.4 minecraft:end_crystal{display:{Name:'{"text":"チャージ"}',Lore:['{"text":"1~3段階までチャージできる。"}']}} 1
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3