tag @s add user
summon armor_stand ~ ~ ~ {Tags:["this"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this] at @s run function project-c:jobaction/124/skill/1/0-move
tag @s remove user
execute if score #124- counter matches ..67 run title @s actionbar {"text":"発動に失敗しました:飛距離が足りません","color":"#cc0000","bold":true,"underlined":true}
execute if score #124- counter matches ..67 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2
execute unless score #124- counter matches ..67 run scoreboard players set @s CT1 1040
execute unless score #124- counter matches ..67 run tag @s remove SkillReady1
execute unless score #124- counter matches ..67 run scoreboard players set @s usedSkill 1
scoreboard players reset #124-
kill @e[tag=this]
