scoreboard players set @s CT3 1140
replaceitem entity @s container.3 minecraft:compass{CT:3,display:{Name:'"CoolTime"'}} 3

scoreboard players operation #116- playerNumber = @s playerNumber
execute if entity @e[tag=116grapple,limit=1] as @e[tag=116grapple] if score @s playerNumber = #116- playerNumber run kill @s
execute if entity @e[tag=116_3AEC,limit=1] as @e[tag=116_3AEC] if score @s playerNumber = #116- playerNumber run kill @s
scoreboard players reset #116- playerNumber

tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
