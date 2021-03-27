
tag @s add me

execute as @e[tag=129-totem] if score @s playerNumber = @a[tag=me,limit=1] playerNumber run tag @s add using

execute unless entity @e[tag=129-totem,tag=using,limit=1] run loot replace entity @s container.2 loot project-c:neac/129/2
execute unless entity @e[tag=129-totem,tag=using,limit=1] run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
execute if entity @e[tag=129-totem,tag=using,limit=1] run loot replace entity @s container.2 loot project-c:neac/129/2-1

execute if entity @e[tag=129-totem,tag=using,limit=1] as @e[tag=129-totem,tag=using] run tag @s remove using
tag @s remove me


tag @s add SkillReady2