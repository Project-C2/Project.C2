scoreboard players set @s CT3 600

summon armor_stand ^ ^ ^0.5 {Tags:["115hoe","first"],Invisible:1b,Marker:1b,NoGravity:1b,Glowing:1b,HandItems:[{id:"minecraft:diamond_hoe",Count:1b},{}],Pose:{RightArm:[-90f,0f,-90f]},DisabledSlots:2039583}
summon armor_stand ^-0.2 ^ ^0.5 {Tags:["115hoe","first"],Invisible:1b,Marker:1b,NoGravity:1b,Glowing:1b,HandItems:[{id:"minecraft:diamond_hoe",Count:1b},{}],Pose:{RightArm:[-90f,0f,-90f]},DisabledSlots:2039583}
summon armor_stand ^0.2 ^ ^0.5 {Tags:["115hoe","first"],Invisible:1b,Marker:1b,NoGravity:1b,Glowing:1b,HandItems:[{id:"minecraft:diamond_hoe",Count:1b},{}],Pose:{RightArm:[-90f,0f,-90f]},DisabledSlots:2039583}
execute as @e[tag=first] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=first] subcounter -90
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run team join RedDummy @e[tag=first]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=first]
tag @e[tag=first] remove first
playsound minecraft:block.portal.travel master @a[distance=..40] ~ ~ ~ 0.5 1.6 0.5


data merge block 12 61 -62 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
