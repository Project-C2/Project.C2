#CT
scoreboard players set @s CT3 600
#スキル効果
#共通
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 2
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 0
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 0

tag @e[type=arrow,distance=..5,limit=1,sort=nearest] add ArrowFP
execute if entity @s[scores={counter_1=0}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:1.5d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=1}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:2.0d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=2}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:2.5d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=3}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:3.0d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=4}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:3.5d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=5}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:4.0d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=6}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:4.5d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=7}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:5.0d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=8}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:5.5d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=9}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:6.0d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=9}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:6.5d,Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=10}] run data merge entity @e[tag=ArrowFP,sort=nearest,limit=1] {damage:7.0d,Tag:["Arrow"],life:1200}

clear @s minecraft:bow{display:{Name:"{\"text\":\"フルパワーショット\",\"color\":\"yellow\",\"italic\":\"false\",\"underlined\":\"true\",\"bold\":\"true\"}"}} 1

scoreboard players set @s counter_1 0

data merge block 99 2 -20 {auto:1b}

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3