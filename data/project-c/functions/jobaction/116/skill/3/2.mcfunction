scoreboard players operation #116- playerNumber = @s playerNumber
execute as @a[scores={jobNumber=116},nbt={SelectedItem:{tag:{116skillID:0b}}}] if score @s playerNumber = #116- playerNumber at @s run tag @s add user

#CT
scoreboard players set @a[tag=user] CT3 1190
tag @a[tag=user] remove SkillReady3
scoreboard players set @a[tag=user] usedSkill 3

#処理
execute at @a[tag=user,limit=1] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Particle:"enchanted_hit",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:11b,Amplifier:4b,Duration:1},{Id:28b,Amplifier:0b,Duration:1}]}
execute store result score @s counter_5 run data get entity @s Pos[1] 5
execute store result score @s counter_6 run data get entity @a[tag=user,limit=1] Pos[1] 5
scoreboard players operation @s counter_5 -= @s counter_6
execute if score @s counter_5 matches ..-1 run scoreboard players operation @s counter_5 *= #-1 counter
scoreboard players add @s counter_5 100
execute if entity @a[tag=user,limit=1] facing entity @a[tag=user,limit=1] feet run function project-c:jobaction/116/skill/3/distance
scoreboard players operation @s counter_4 *= #100 counter
scoreboard players operation @s counter_4 /= @s counter_5
tp @s ~ ~1 ~
execute if entity @a[tag=user,limit=1] run function project-c:jobaction/116/skill/3/summon
execute at @a[tag=user,limit=1] facing entity @s feet as @a[tag=user,limit=1] anchored eyes positioned ^ ^ ^-0.3 run tp @e[tag=this] ~ ~ ~
execute if entity @a[tag=user,limit=1] run tag @e[tag=this] remove this

execute if entity @a[tag=user,limit=1] as @a[tag=user] run attribute @s minecraft:generic.knockback_resistance modifier add 116-116-116-116-116 116_3 1 add
execute if entity @a[tag=user,limit=1] run tag @a[tag=user] add 116knockback_resist
tag @a[tag=user] remove user


schedule function project-c:jobaction/116/skill/3/stopsound 1t replace
kill @s

