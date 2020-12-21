playsound minecraft:entity.experience_orb.pickup master @s ~ -255 ~ 0 1 0.5
tag @s[tag=023-34] remove 023-34
tag @s[tag=023-33] add 023-34
tag @s[tag=023-33] remove 023-33
tag @s[tag=023-32] add 023-33
tag @s[tag=023-32] remove 023-32
tag @s[tag=023-31] add 023-32
tag @s[tag=023-31] remove 023-31
tag @s[tag=023-30] add 023-31
tag @s[tag=023-30] remove 023-30
tag @s[tag=!023-30,tag=!023-31,tag=!023-32,tag=!023-33,tag=!023-34] add 023-30

function project-c:jobaction/023/replaceitem/0-book