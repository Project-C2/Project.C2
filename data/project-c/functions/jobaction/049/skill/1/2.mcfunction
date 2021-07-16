#演出
particle minecraft:explosion ~ ~ ~ 0 0 0 0 2 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.5

#デバフエリア召喚してplayerNumberとteamNumber代入
summon armor_stand ~ ~ ~ {NoGravity:0b,Invisible:1b,Tags:["049-Anker","first"]}
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
tag @e[tag=first] remove first

#hit判定
execute if entity @e[distance=..1.5,tag=Battle,limit=1] as @e[distance=..1.5,tag=Battle] run tag @s add hit
data merge storage wnkm_check_hit: {option:0b,including_myself:0b}
function project-c:general/teamcheck
execute if entity @e[tag=hit,limit=1] run function project-c:jobaction/049/skill/1/dmg

#後処理
scoreboard players set @s counter 10000
data merge block -37 2 -18 {auto:1b}
