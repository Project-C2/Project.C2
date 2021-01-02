tag @s add user
execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["this"],Marker:1b,Invisible:1b,NoGravity:1b}
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute as @e[tag=this] at @s run function project-c:jobaction/110/skills/19/0-move
tag @s remove user
execute if score #089dummy counter matches ..133 run tellraw @s {"text":"発動に失敗しました:飛距離が足りません","color":"red"}
execute if score #089dummy counter matches ..133 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 2
execute if score #089dummy counter matches ..133 run scoreboard players set #110- counter_3 1180
execute unless score #089dummy counter matches ..133 run scoreboard players set #110- counter_3 900
execute unless score #089dummy counter matches ..133 run data merge block -35 2 89 {auto:1b}
scoreboard players reset #089dummy
kill @e[tag=this]
