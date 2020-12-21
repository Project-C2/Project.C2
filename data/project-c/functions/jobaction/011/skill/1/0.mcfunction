scoreboard players set @s CT1 1180


scoreboard players set @s counter_1 0

execute if entity @s[team=Red] as @e[tag=StoneR] if score @s playerNumber = @p playerNumber run scoreboard players add @p counter_1 1
execute if entity @s[team=Red,scores={counter_1=10..}] as @e[tag=StoneR] if score @s playerNumber = @p playerNumber run tag @s add ownStone
execute if entity @s[team=Red,scores={counter_1=10..}] run kill @e[tag=ownStone,sort=furthest,limit=1]

execute if entity @s[team=Blue] as @e[tag=StoneB] if score @s playerNumber = @p playerNumber run scoreboard players add @p counter_1 1
execute if entity @s[team=Blue,scores={counter_1=10..}] as @e[tag=StoneB] if score @s playerNumber = @p playerNumber run tag @s add ownStone
execute if entity @s[team=Blue,scores={counter_1=10..}] run kill @e[tag=ownStone,sort=furthest,limit=1]

execute if entity @s[team=Red] run summon shulker ~ ~-0.1 ~ {AttachFace:0b,Color:14b,Attributes:[{Name:generic.maxHealth,Base:40}],Health:30.0f,NoAI:1b,Silent:1b,Team:"Red",Tags:["Battle","StoneR","StoneSet"]}
execute if entity @s[team=Blue] run summon shulker ~ ~ ~ {AttachFace:0b,Color:11b,Attributes:[{Name:generic.maxHealth,Base:40}],Health:30.0f,NoAI:1b,Silent:1b,Team:"Blue",Tags:["Battle","StoneB","StoneSet"]}

scoreboard players operation @e[tag=StoneSet] playerNumber = @s playerNumber
tag @e[tag=StoneSet] remove StoneSet


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1