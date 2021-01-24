kill @e[type=snowball,distance=..5,limit=1,sort=nearest]
clear @s snowball
execute unless score @s counter_2 matches 1.. run replaceitem entity @s weapon.offhand minecraft:snowball{display:{Name:'{"text":"Thawball","color":"#ffc9d2","italic":false}'},Enchantments:[{}]} 1
scoreboard players reset @s useSnowball

