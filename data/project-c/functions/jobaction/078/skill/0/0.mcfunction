scoreboard players set @s counter_1 17
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 2 1

execute if entity @s[team=Red] anchored eyes positioned ~ ~-0.0 ~ run summon armor_stand ^ ^0.5 ^ {Tags:["078-dice","078-diceSummoned","078-diceR","078-pic"],Invisible:1b,HandItems:[{id:"minecraft:nether_star",Count:1b}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:2039583,NoGravity:1b,Marker:1b}
execute if entity @s[team=Blue] anchored eyes positioned ~ ~-0.0 ~ run summon armor_stand ^ ^0.5 ^ {Tags:["078-dice","078-diceSummoned","078-diceB","078-pic"],Invisible:1b,HandItems:[{id:"minecraft:nether_star",Count:1b}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:2039583,NoGravity:1b,Marker:1b}

teleport @e[tag=078-diceSummoned,limit=1] ^ ^0.5 ^ ~ 0

execute anchored eyes run teleport @e[tag=078-diceSummoned] ~ ~0.5 ~ ~ ~

tag @e[tag=078-diceSummoned] remove 078-diceSummoned

clear @s snowball

#ループ処理開始
data merge block 81 5 31 {auto:1b}