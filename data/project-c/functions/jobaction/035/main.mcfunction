#実行者     -> jobNumber = 035
#実行地点   -> 実行者

scoreboard players reset @s usedSkill
tag @s add 035

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/035/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/035/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/035/replaceitem/3
execute if entity @s[tag=!035-charge,nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]}] run function project-c:jobaction/035/charge
execute if entity @s[tag=035-charge] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]}] run tag @s remove 035-charge

execute if entity @s[scores={counter_2=..9},nbt={OnGround:1b}] if entity @s[scores={sneak=1..}] run scoreboard players add @s counter_1 3
execute if entity @s[scores={counter_2=..9},nbt={OnGround:1b}] if entity @s[scores={sneak=1..}] run particle minecraft:enchant ~ ~ ~ 1 1 1 1 5 normal @a
execute if entity @s[scores={counter_2=..9},nbt={OnGround:1b}] run scoreboard players add @s counter_1 2

execute if entity @s[scores={counter_1=120..}] run scoreboard players add @s counter_2 1
execute if entity @s[scores={counter_1=120..}] run function project-c:jobaction/035/setarrow
execute if entity @s[scores={counter_1=120..}] run scoreboard players remove @s counter_1 120

execute if entity @s[scores={counter=1}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
execute if entity @s[scores={counter=1..}] run scoreboard players remove @s counter 1

execute if entity @e[tag=035-animaBow,limit=1] as @e[tag=035-animaBow] if score @s playerNumber = @a[tag=035,limit=1] playerNumber run tag @s add 035-animaBowTP
execute if entity @e[tag=035-animaBowTP,limit=1] anchored eyes positioned ^-0.4 ^ ^ as @e[tag=035-animaBowTP] run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=035-animaBowTP,limit=1] run effect give @s levitation 1 0
execute if entity @e[tag=035-animaBowTP,limit=1] as @e[tag=035-animaBowTP] run tag @s remove 035-animaBowTP


execute if entity @s[nbt={SelectedItem:{id:"minecraft:spectral_arrow"}},scores={counter_2=1..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] unless entity @s[scores={counter=1..}] run function project-c:jobaction/035/skill/levitate
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"299792458[m/s]"}'}}}},scores={counter_2=1..,CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] positioned ~ ~-0.4 ~ run function project-c:jobaction/035/skill/1/0
execute if entity @s[scores={CT2=1200..,crossbow=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/035/skill/2/0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{display:{Name:'{"text":"アニマディヴァイン","color":"gold","underlined":true}'}}}},scores={counter_2=8..,CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/035/skill/3/0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{display:{Name:'{"text":"アニマディヴァイン","color":"gold","underlined":true}'}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/035/skill/3/0b

execute if entity @s[scores={crossbow=1..}] anchored eyes positioned ^ ^ ^ run data merge entity @e[type=spectral_arrow,limit=1,distance=..5,tag=!Arrow] {Tags:["Arrow"],life:1200s}
execute if entity @s[scores={crossbow=1..}] run scoreboard players reset @s[scores={crossbow=1..}] crossbow

#execute if entity @e[scores={useCarrotStick=1..}] if entity @e[tag=035-Bow,limit=1] as @e[tag=035-Bow,limit=1,sort=nearest] run function project-c:jobaction/035/skill/bow/0
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
tag @s remove 035