scoreboard players add @s counter_2 1
summon armor_stand ~ ~ ~ {Tags:["054-2stand","054-2standF"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=054-2standF,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join RedDummy @e[tag=054-2standF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=054-2standF]
tag @e[tag=054-2standF] remove 054-2standF
execute if score @s counter_2 matches 2 run data merge block 49 2 -20 {auto:1b}
execute if score @s counter_2 matches 2..3 run tp @s @s
execute if score @s counter_2 matches 2 run function project-c:jobaction/054/skill/2/jump
execute if score @s counter_2 matches 16..17 run tp @s @s
execute if score @s counter_2 matches 16 run function project-c:jobaction/054/skill/2/jump
execute if score @s counter_2 matches 30..31 run tp @s @s
execute if score @s counter_2 matches 30 run function project-c:jobaction/054/skill/2/jump
execute if score @s counter_2 matches 44..45 run tp @s @s
execute if score @s counter_2 matches 44 run function project-c:jobaction/054/skill/2/jump
execute if score @s counter_2 matches 60 run scoreboard players operation #054dummy playerNumber = @s playerNumber
execute if score @s counter_2 matches 60 as @e[tag=054-2stand] if score @s playerNumber = #054dummy playerNumber at @s run function project-c:jobaction/054/skill/2/2
execute if score @s counter_2 matches 60 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 3 0.5
execute if score @s counter_2 matches 60 run scoreboard players reset #054dummy
execute if score @s counter_2 matches 60 run scoreboard players set @s counter_2 0