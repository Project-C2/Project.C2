scoreboard players set #110- counter_3 1201
execute anchored eyes run summon minecraft:armor_stand ^ ^-0.3 ^ {Tags:["this","110denkou"],Marker:1b,NoGravity:1b,Invisible:1b}
execute if entity @s[team=Red] run tag @e[tag=this] add 089Red
execute if entity @s[team=Blue] run tag @e[tag=this] add 089Blue
execute if entity @s[scores={counter_9=3}] run tag @e[tag=this] add 110geometric
execute if score #110- counter_2 matches 1 run scoreboard players set @e[tag=this] counter_5 1080
execute if score #110- counter_2 matches 2 run scoreboard players set @e[tag=this] counter_6 1080
execute if score #110- counter_2 matches 3 run scoreboard players set @e[tag=this] counter_7 1080

execute anchored eyes run tp @e[tag=this,limit=1] ^ ^-0.3 ^ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 2
tag @s add 110denkou_addable

data merge block -52 73 -62 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1