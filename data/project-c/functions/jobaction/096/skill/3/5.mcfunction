#条件を満たしている時のジャンプ後の処理、1回
scoreboard players remove @s CT3 60
replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 6
effect give @s minecraft:levitation 1 2
replaceitem entity @s armor.feet minecraft:chainmail_boots{Enchantments:[{id:"binding_curse",lvl:1s},{id:"blast_protection",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"096",Slot:"feet",UUID:[I;0,96,0,96],Amount:1d,Operation:0}],Unbreakable:1b}

tag @s add 096chainjump_p
tag @s add 096_jumped
tag @e[tag=flag] remove 096chained
tag @e[tag=flag] remove 096chain
tag @e[tag=flag] add 096chainjump
tag @e[tag=flag] remove flag
data merge block 51 2 91 {auto:1b}
