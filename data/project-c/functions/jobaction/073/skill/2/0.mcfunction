#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1180
scoreboard players remove @s Mana 150
scoreboard players add @s MagicFatigue 50

#スキル効果
#共通
particle firework ~ ~ ~ 3 0 3 1 128
playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 2
playsound minecraft:block.glass.break master @a ~ ~ ~ 3 0.7


summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomEthereum]}
execute as @e[tag=RandomEthereum] at @s store result score @s counter_3 run data get entity @s UUID[1]

execute as @e[limit=1,tag=RandomEthereum] at @s run scoreboard players operation @s counter_3 %= #3 counter

execute if entity @e[tag=RandomEthereum,scores={counter_3=0}] run tellraw @s ["",{"text":"\u06de","bold":true,"obfuscated":true,"color":"aqua"},{"text":"Neutral Ethereum","bold":true,"color":"aqua"},{"text":" を得た！"}]

execute if entity @e[tag=RandomEthereum,scores={counter_3=0}] run scoreboard players add @s[scores={counter_1=..4}] counter_1 1

execute if entity @e[tag=RandomEthereum,scores={counter_3=1}] run tellraw @s ["",{"text":"\u06de","bold":true,"obfuscated":true,"color":"gold"},{"text":"Light Ethereum","bold":true,"color":"gold"},{"text":" を得た！"}]

execute if entity @e[tag=RandomEthereum,scores={counter_3=1}] run scoreboard players add @s[scores={counter_2=..4}] counter_2 1

execute if entity @e[tag=RandomEthereum,scores={counter_3=2}] run tellraw @s ["",{"text":"\u06de","bold":true,"obfuscated":true,"color":"dark_purple"},{"text":"Dark Ethereum","bold":true,"color":"dark_purple"},{"text":" を得た！"}]

execute if entity @e[tag=RandomEthereum,scores={counter_3=2}] run scoreboard players add @s[scores={counter_3=..4}] counter_3 1

kill @e[tag=RandomEthereum]
function project-c:jobaction/073/replaceitem/ethereum
#リセット
tag @s remove SkillReady2
data merge block 13 2 31 {auto:1b}