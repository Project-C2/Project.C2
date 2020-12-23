replaceitem entity @s[scores={counter_1=0}] hotbar.0 minecraft:trident{display:{Name:'{"text":"ガリアスフィラ","color":"red","bold":true,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1674568803,-859158088,-1917042378,-200591727],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1674568803,-859158088,-1917042378,-200591727],Slot:"mainhand"}],Unbreakable:1b} 1
tag @s add this
execute as @e[type=minecraft:trident,tag=trident] if score @s playerNumber = @a[tag=this,limit=1] playerNumber run kill @s
tag @s remove this
scoreboard players set @s[scores={counter_1=1..}] counter_1 0

scoreboard players reset @s drop