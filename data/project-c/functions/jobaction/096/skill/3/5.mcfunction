#条件を満たしている時のジャンプ後の処理、1回
scoreboard players remove @s CT3 60
replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 6
execute as @e[tag=flag,tag=096chainFirst,limit=1] rotated as @s positioned as @s run tp @s ~ ~ ~ ~ ~
execute store result score @s counter_6 run data get entity @e[tag=flag,tag=096chainFirst,limit=1] Rotation[1] 1
execute if score @s counter_6 matches 1.. run scoreboard players operation @s counter_6 *= #3 counter
execute if score @s counter_6 matches 1.. run scoreboard players operation @s counter_6 *= #-1 counter
scoreboard players add @s counter_6 100
execute if score @s counter_6 matches 1.. run summon area_effect_cloud ~ ~0.5 ~ {Radius:1f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:25b,Amplifier:2b,Duration:0}],Tags:["this"]}
execute if score @s counter_6 matches 1.. store result entity @e[tag=this,limit=1,sort=nearest] Effects[0].Duration int 0.2 run scoreboard players get @s counter_6
tag @e[tag=this,limit=1,sort=nearest] remove this
effect give @s minecraft:slow_falling 1 0
replaceitem entity @s armor.feet minecraft:chainmail_boots{Enchantments:[{id:"binding_curse",lvl:1s},{id:"blast_protection",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"096",Slot:"feet",UUID:[I;0,96,0,96],Amount:1d,Operation:0}],Unbreakable:1b}

tag @s add 096chainjump_p
tag @s add 096_jumped
tag @e[tag=flag] remove 096chained
tag @e[tag=flag] remove 096chain
tag @e[tag=flag] add 096chainjump
tag @e[tag=flag] remove flag
data merge block 51 2 91 {auto:1b}
