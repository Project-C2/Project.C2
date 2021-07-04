scoreboard players set @s counter 22
item replace entity @s container.0 with minecraft:compass{display:{Name:'"CoolTime"'}} 1
clear @s minecraft:lingering_potion{display:{Name:'{"text":"アクアボム","color":"aqua","italic":false}'}}

execute as @e[type=potion,limit=1,sort=nearest,distance=..4,nbt={Item:{id:"minecraft:lingering_potion",tag:{CustomPotionEffects:[{Id:13b,Amplifier:93b}]}}}] run tag @s add 093aquabomb

playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 2

data merge block 9 2 91 {auto:1b}
