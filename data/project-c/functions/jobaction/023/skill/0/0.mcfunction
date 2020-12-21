playsound minecraft:entity.experience_orb.pickup master @s ~ -255 ~ 0 1 1
clear @s stick{023PowerStick:1b}
tag @s[tag=023-4] remove 023-4
tag @s[tag=023-3] add 023-4
tag @s[tag=023-3] remove 023-3
tag @s[tag=023-2] add 023-3
tag @s[tag=023-2] remove 023-2
tag @s[tag=023-1] add 023-2
tag @s[tag=023-1] remove 023-1
tag @s[tag=023-0] add 023-1
tag @s[tag=023-0] remove 023-0
tag @s[tag=!023-0,tag=!023-1,tag=!023-2,tag=!023-3,tag=!023-4] add 023-0
function project-c:jobaction/023/replaceitem/0-wand