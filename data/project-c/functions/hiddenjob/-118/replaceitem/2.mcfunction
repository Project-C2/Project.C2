execute if score @s counter_2 matches 1.. run loot replace entity @s container.2 loot project-c:neac/118-/2-1
execute unless score @s counter_2 matches 1.. run loot replace entity @s container.2 loot project-c:neac/118-/2
execute unless entity @s[tag=SkillReady2] run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2