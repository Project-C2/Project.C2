execute if entity @s[scores={CT1=..1180},tag=relic34ct1,tag=!relic34ct1-2] run tag @s add relic34ct1_2
execute if entity @s[scores={CT1=..1180},tag=relic34ct1,tag=relic34ct1_2] run tag @s remove relic34ct1
execute if entity @s[scores={CT1=1199..},tag=!relic34ct1,tag=relic34ct1_2] run tag @s remove relic34ct1_2


execute if entity @s[scores={CT1=..1180},tag=!relic34ct1,tag=!relic34ct1_2] run tag @s add relic34ct1
execute if entity @s[scores={CT1=..1180},tag=relic34ct1] run effect give @s resistance 1 4

execute if entity @s[scores={CT2=..1180},tag=relic34ct2,tag=!relic34ct2-2] run tag @s add relic34ct2_2
execute if entity @s[scores={CT2=..1180},tag=relic34ct2,tag=relic34ct2_2] run tag @s remove relic34ct2
execute if entity @s[scores={CT2=1181..},tag=!relic34ct2,tag=relic34ct2_2] run tag @s remove relic34ct2_2


execute if entity @s[scores={CT2=..1180},tag=!relic34ct2,tag=!relic34ct2_2] run tag @s add relic34ct2
execute if entity @s[scores={CT2=..1180},tag=relic34ct2] run effect give @s resistance 1 4

execute if entity @s[scores={CT3=..1180},tag=relic34ct3,tag=!relic34ct3-2] run tag @s add relic34ct3_2
execute if entity @s[scores={CT3=..1180},tag=relic34ct3,tag=relic34ct3_2] run tag @s remove relic34ct3
execute if entity @s[scores={CT3=1181..},tag=!relic34ct3,tag=relic34ct3_2] run tag @s remove relic34ct3_2

execute if entity @s[scores={CT3=..1180},tag=!relic34ct3,tag=!relic34ct3_2] run tag @s add relic34ct3
execute if entity @s[scores={CT3=..1180},tag=relic34ct3] run effect give @s resistance 1 4

function project-c:general/relic/action/daisyou_harf