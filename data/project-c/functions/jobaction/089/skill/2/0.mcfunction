
execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute as @e[tag=this] at @s run function project-c:jobaction/089/skill/2/0-move
execute if score #089dummy counter matches ..133 run tellraw @s {"text":"発動に失敗しました:飛距離が足りません","color":"red"}
execute if score #089dummy counter matches ..133 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2
execute if score #089dummy counter matches ..133 run scoreboard players set @s CT2 1180
execute if score #089dummy counter matches ..133 run replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 1
execute unless score #089dummy counter matches ..133 run scoreboard players set @s CT2 960
execute unless score #089dummy counter matches ..133 run replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 12
execute unless score #089dummy counter matches ..133 run tag @s add 089lightning_p
execute unless score #089dummy counter matches ..133 run data merge block -35 2 89 {auto:1b}
scoreboard players reset #089dummy
kill @e[tag=this]

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2