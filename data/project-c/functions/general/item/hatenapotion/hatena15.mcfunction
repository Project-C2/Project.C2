execute as @a[tag=HatenaPotion] at @s run me 「...この力は！？」
tag @a[tag=HatenaPotion] add JobChanged
execute as @a[tag=HatenaPotion] at @s run function project-c:general/jobrandom
data merge block -75 49 -123 {auto:1b}