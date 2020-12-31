tag @s add user
execute as @e[tag=110aqua_gun_aec] if score @s playerNumber = @a[tag=user,limit=1,sort=nearest] playerNumber run tag @s add 110flag_AEC
execute unless entity @e[tag=110flag_AEC,limit=1] run tag @s remove 110aqua_gun_using
execute as @e[tag=110flag_AEC] if entity @s[nbt=!{Age:1},nbt=!{Age:3}] run tag @s remove 110flag_AEC
tag @s remove user

execute if entity @e[tag=110flag_AEC,limit=1] run function project-c:jobaction/110/skills/16/shot
tag @e[tag=110flag_AEC] remove 110flag_AEC
