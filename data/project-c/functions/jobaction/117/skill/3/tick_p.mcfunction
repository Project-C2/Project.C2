execute if entity @s[advancements={project-c:wanco_job/117/s3=true}] run effect clear @s minecraft:invisibility
execute if entity @s[nbt={HurtTime:9s}] run effect clear @s minecraft:invisibility
execute if entity @s[scores={usedSkill=1..}] run effect clear @s minecraft:invisibility

execute unless data entity @s {ActiveEffects:[{Id:14b,Ambient:1b}]} run function project-c:jobaction/117/skill/3/end_buff
