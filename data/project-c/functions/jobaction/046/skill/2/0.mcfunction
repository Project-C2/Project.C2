#CT
scoreboard players set @s CT2 600
#スキル効果
#共通
effect give @s minecraft:instant_health
particle minecraft:heart ~ ~1 ~ 1 1 1 0 7
execute if entity @s[team=Red] run summon armor_stand ~ ~10 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["046-Par","046-ParR","046-ParSummoned"]}
execute if entity @s[team=Blue] run summon armor_stand ~ ~10 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["046-Par","046-ParB","046-ParSummoned"]}
scoreboard players operation @e[tag=046-ParSummoned] counter = @s HP
scoreboard players set @e[tag=046-ParSummoned] counter_1 2
scoreboard players set @e[tag=046-ParSummoned] counter_2 20
scoreboard players operation @e[tag=046-ParSummoned] counter /= @e[tag=046-ParSummoned] counter_1
scoreboard players operation @e[tag=046-ParSummoned] counter *= @e[tag=046-ParSummoned] counter_2
scoreboard players set @e[tag=046-ParSummoned,scores={counter=601..}] counter 600
tag @e[tag=046-ParSummoned] remove 046-ParSummoned
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 1
data merge block -71 2 -20 {auto:1b}
tag @e[tag=046-Par]
#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2