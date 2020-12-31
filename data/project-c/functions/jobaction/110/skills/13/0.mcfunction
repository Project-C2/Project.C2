scoreboard players set #110- counter_3 1201
function project-c:jobaction/110/skills/13/gun-ammo
execute at @s anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 2
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 40 normal @a
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 10 force @a

execute at @s anchored eyes positioned ^ ^ ^1 run summon armor_stand ~ ~ ~ {Tags:["110mana-gun","this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute at @s anchored eyes positioned ^ ^ ^1 run tp @e[tag=this,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join RedDummy @e[tag=this,limit=1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this,limit=1]
tag @e[tag=this] remove this

scoreboard players set #110-recoil counter_1 -720
function project-c:jobaction/110/operation/recoil



tag @s add mana_gun_user
execute if data entity @s {SelectedItem:{tag:{110Ammo:0,110skillID:13b}}} run function project-c:jobaction/110/skills/13/reload
data merge block -48 61 -62 {auto:1b}