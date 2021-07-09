scoreboard players set @s CT1 800
item replace entity @s hotbar.1 with minecraft:compass{display:{Name:'"CoolTime"'}} 20
scoreboard players operation #089dummy playerNumber = @s playerNumber
execute as @e[type=pig,name="忘却の彼方より訪れし王"] if score @s playerNumber = #089dummy playerNumber run kill @s
execute if entity @s[team=Red] at @s run summon pig ~ ~ ~ {CustomName:'"忘却の彼方より訪れし王"',Saddle:1b,Attributes:[{Name:"generic.max_health",Base:8d},{Name:"generic.movement_speed",Base:0.51d}],Health:8.0f,Team:"Red",DeathLootTable:"empty",Tags:["this"]}
execute if entity @s[team=Blue] at @s run summon pig ~ ~ ~ {CustomName:'"忘却の彼方より訪れし王"',Saddle:1b,Attributes:[{Name:"generic.max_health",Base:8d},{Name:"generic.movement_speed",Base:0.51d}],Health:8.0f,Team:"Blue",DeathLootTable:"empty",Tags:["this"]}

scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=this] remove this
data merge block -37 2 91 {auto:1b}

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 2

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1