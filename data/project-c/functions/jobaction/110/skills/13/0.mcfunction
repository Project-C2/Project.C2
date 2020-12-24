scoreboard players set #110- counter_3 1201
function project-c:jobaction/110/skills/13/gun-ammo
execute at @s anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 2
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 40 normal @a
execute at @s anchored eyes positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 2 10 force @a

execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^4.5 {Tags:["110vector"],Duration:1}
execute at @s anchored eyes positioned ^ ^ ^1 run summon spectral_arrow ~ ~ ~ {Tags:["110mana-gun","this","Arrow"],life:1200s,damage:0.7d,Duration:0}
data modify entity @e[type=spectral_arrow,tag=this,limit=1,sort=nearest] Motion set from entity @e[tag=110vector,limit=1] Pos
data modify entity @e[type=spectral_arrow,tag=this,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e[tag=this] remove this
kill @e[tag=110vector]
scoreboard players set #110-recoil counter_1 -720
function project-c:jobaction/110/operation/recoil

execute if data entity @s {SelectedItem:{tag:{110Ammo:0,110skillID:13b}}} run function project-c:jobaction/110/skills/13/reload
data merge block -48 61 -62 {auto:1b}