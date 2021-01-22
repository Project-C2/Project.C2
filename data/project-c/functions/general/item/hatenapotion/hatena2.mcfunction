execute as @a[tag=HatenaPotion] at @s run me 「…この力は！？」
execute as @a[tag=HatenaPotion] at @s run scoreboard players set @s jobNumber 37
title @a[tag=HatenaPotion] actionbar "このぴらてってやつなに"
execute as @a[tag=HatenaPotion] at @s run tellraw @a "職業:ぴらて に転職しました"
tag @a[tag=HatenaPotion] add JobChanged
data merge block -75 49 -123 {auto:1b}