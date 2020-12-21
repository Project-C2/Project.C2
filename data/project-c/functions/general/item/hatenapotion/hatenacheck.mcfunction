tag @s add HatenaPotion
tag @s remove HatenaPotionR

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomHatena]}
execute as @e[tag=RandomHatena] at @s store result score @s counter_3 run data get entity @s UUID[1]

execute as @e[limit=1,tag=RandomHatena] at @s run scoreboard players operation @s counter_3 %= #15 counter

execute as @e[tag=RandomHatena,scores={counter_3=0}] at @s run function project-c:general/item/hatenapotion/hatena1
execute as @e[tag=RandomHatena,scores={counter_3=1}] at @s run function project-c:general/item/hatenapotion/hatena2
execute as @e[tag=RandomHatena,scores={counter_3=2}] at @s run function project-c:general/item/hatenapotion/hatena3
execute as @e[tag=RandomHatena,scores={counter_3=3}] at @s run function project-c:general/item/hatenapotion/hatena4
execute as @e[tag=RandomHatena,scores={counter_3=4}] at @s run function project-c:general/item/hatenapotion/hatena5
execute as @e[tag=RandomHatena,scores={counter_3=5}] at @s run function project-c:general/item/hatenapotion/hatena6
execute as @e[tag=RandomHatena,scores={counter_3=6}] at @s run function project-c:general/item/hatenapotion/hatena7
execute as @e[tag=RandomHatena,scores={counter_3=7}] at @s run function project-c:general/item/hatenapotion/hatena8
execute as @e[tag=RandomHatena,scores={counter_3=8}] at @s run function project-c:general/item/hatenapotion/hatena9
execute as @e[tag=RandomHatena,scores={counter_3=9}] at @s run function project-c:general/item/hatenapotion/hatena10
execute as @e[tag=RandomHatena,scores={counter_3=10}] at @s run function project-c:general/item/hatenapotion/hatena11
execute as @e[tag=RandomHatena,scores={counter_3=11}] at @s run function project-c:general/item/hatenapotion/hatena12
execute as @e[tag=RandomHatena,scores={counter_3=12}] at @s run function project-c:general/item/hatenapotion/hatena13
execute as @e[tag=RandomHatena,scores={counter_3=13}] at @s run function project-c:general/item/hatenapotion/hatena14
execute as @e[tag=RandomHatena,scores={counter_3=14}] at @s run function project-c:general/item/hatenapotion/hatena15

kill @e[tag=RandomHatena]
tag @s[tag=HatenaPotion] remove HatenaPotion