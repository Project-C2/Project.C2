scoreboard players set @s counter 30
scoreboard players remove @s subcounter 5
particle minecraft:sweep_attack ~ ~ ~ 1.3 1 1.3 1 100
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 2
playsound minecraft:block.anvil.place master @a ~ ~ ~ 2 2
summon minecraft:armor_stand ~ ~ ~ {Tags:["031-shot","031-shotFirst"],Invisible:1b,NoGravity:1b,Marker:1b}
execute if entity @s[team=Red] run team join RedDummy @e[tag=031-shotFirst]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=031-shotFirst]
scoreboard players operation @e[tag=031-shotFirst,limit=1] playerNumber = @s playerNumber
execute at @s anchored eyes run tp @e[tag=031-shotFirst] ^ ^ ^ ~ ~
tag @e[tag=031-shotFirst] remove 031-shotFirst
data merge block -3 5 -71 {auto:1b}