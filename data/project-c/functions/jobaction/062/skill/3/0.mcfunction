#CT
scoreboard players set @s CT3 -1200
replaceitem entity @s hotbar.3 minecraft:air
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"人符「未来永劫斬」","bold":true}]
particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 1 100 force
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 0
execute anchored eyes as @s at @s run teleport @s ^ ^-1.1 ^ ~ 0
#スキル効果
#共通

scoreboard players set @s counter_1 80
scoreboard players set @s counter_2 0
scoreboard players set @s counter_3 0

scoreboard players set @s subcounter 31
effect give @s night_vision 100 0 true
effect give @s slowness 100 4 true
effect give @s slow_falling 100 0 true
effect give @s levitation 1 0 true

data merge block -105 2 31 {auto:1b}

#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3