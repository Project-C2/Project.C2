#秒数カウンター
scoreboard players add @a[tag=052-EX-2] counter_2 1

#移動停止
execute unless entity @a[tag=052-EX-3] as @s at @s run effect give @s[scores={counter_2=1..25}] minecraft:jump_boost 1 250 false
execute unless entity @a[tag=052-EX-3] as @s at @s run effect give @s[scores={counter_2=1..25}] minecraft:slowness 1 127 false

execute if entity @a[tag=052-EX-3] as @s at @s run effect give @s[scores={counter_2=1..45}] minecraft:jump_boost 1 250 false
execute if entity @a[tag=052-EX-3] as @s at @s run effect give @s[scores={counter_2=1..45}] minecraft:slowness 1 127 false

#一発目無補正
execute if entity @a[scores={counter_2=45},tag=052-EX-R] as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["052-EX-4","052-EX-6","052-EX-RR"]}
execute if entity @a[scores={counter_2=45},tag=052-EX-B] as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["052-EX-4","052-EX-6","052-EX-BB"]}
##一発目第一補正あり
execute if entity @a[scores={counter_2=45},tag=052-EX-R,tag=052-EX-7] as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["052-EX-4","052-EX-6","052-EX-RR","052-EX-8"]}
execute if entity @a[scores={counter_2=45},tag=052-EX-B,tag=052-EX-7] as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["052-EX-4","052-EX-6","052-EX-BB","052-EX-8"]}
#共通
execute if entity @a[scores={counter_2=45}] as @s at @s run teleport @e[tag=052-EX-4,distance=..1,limit=1] @s
execute if entity @a[scores={counter_2=45}] as @s at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1
execute if entity @a[scores={counter_2=45}] as @s at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1
execute if entity @a[scores={counter_2=45}] as @s at @s run scoreboard players add @s counter_4 1

#二発目無補正
execute if entity @a[tag=052-EX-3,scores={counter_2=70},tag=052-EX-R] as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["052-EX-5","052-EX-6","052-EX-RR"]}
execute if entity @a[tag=052-EX-3,scores={counter_2=70},tag=052-EX-B] as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["052-EX-5","052-EX-6","052-EX-BB"]}
#二発目第一補正あり
execute if entity @a[tag=052-EX-3,scores={counter_2=70},tag=052-EX-R,tag=052-EX-7] as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["052-EX-5","052-EX-6","052-EX-RR","052-EX-8"]}
execute if entity @a[tag=052-EX-3,scores={counter_2=70},tag=052-EX-B,tag=052-EX-7] as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["052-EX-5","052-EX-6","052-EX-BB","052-EX-8"]}
#共通
execute if entity @a[tag=052-EX-3,scores={counter_2=70}] as @s at @s run teleport @e[tag=052-EX-5,distance=..1,limit=1] @s
execute if entity @a[tag=052-EX-3,scores={counter_2=70}] as @s at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1
execute if entity @a[tag=052-EX-3,scores={counter_2=70}] as @s at @s run scoreboard players add @s counter_4 1
execute if entity @a[tag=052-EX-3,scores={counter_2=70}] as @s at @s run scoreboard players add @s counter_4 1
function project-c:jobaction/052/replaceitem/0

#奥義に第四補正を乗せる
scoreboard players operation @e[tag=052-EX-6,tag=!052-EX-9] counter_8 = @a[tag=052-EX-2] counter_4
tag @e[tag=052-EX-6,tag=!052-EX-9] add 052-EX-9

#演出
execute as @a[tag=052-EX-2,scores={counter_2=1..35}] at @s run particle minecraft:enchant ~ ~1.5 ~ 0 0 0 1 100 force
execute as @a[tag=052-EX-2,scores={counter_2=1}] at @s run me 「奥義……」
execute as @a[tag=052-EX-2,scores={counter_2=40}] at @s run me 「五輪剣！」

#次へ
data merge block 21 8 -20 {auto:1b}

#リセット
tag @a[scores={counter_2=70..}] remove 052-EX-2
tag @a[scores={counter_2=70..}] remove 052-EX-3
tag @a[scores={counter_2=70..}] remove 052-EX-7
tag @a[scores={counter_2=70..}] remove 052-EX-R
tag @a[scores={counter_2=70..}] remove 052-EX-B
scoreboard players reset @a[scores={counter_2=70..}] counter_2