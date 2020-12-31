
function project-c:jobaction/110/skills/16/gun-ammo
execute at @s anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 0.5 2
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 1 5 force @a

execute at @s anchored eyes positioned ^ ^ ^1 run summon armor_stand ~ ~ ~ {Tags:["110aqua_gun","this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute at @s anchored eyes positioned ^ ^ ^1 run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join RedDummy @e[tag=this,limit=1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this,limit=1]
execute if entity @s[scores={counter_9=3}] run tag @e[tag=this] add 110geometric
tag @e[tag=this] remove this
scoreboard players set #110-recoil counter_1 -168
scoreboard players set #110-recoil counter_2 12
scoreboard players set #110-recoil counter_3 6
function project-c:jobaction/110/operation/recoil

execute unless entity @s[tag=aqua_gun_user] run tag @s add aqua_gun_user
execute if data entity @s {SelectedItem:{tag:{110Ammo:0,110skillID:16b}}} run function project-c:jobaction/110/skills/16/reload
data merge block -48 70 -62 {auto:1b}