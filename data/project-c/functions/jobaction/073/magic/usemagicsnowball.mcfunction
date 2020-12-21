execute if entity @s[scores={Mana=..599,subcounter=21}] run kill @e[type=snowball,distance=..5,limit=1]
execute if entity @s[scores={Mana=..399,subcounter=22}] run kill @e[type=snowball,distance=..5,limit=1]

execute if entity @s[scores={Mana=600..,subcounter=21}] run function project-c:jobaction/073/magic/darknessoverload1
execute if entity @s[scores={Mana=400..,subcounter=22}] run function project-c:jobaction/073/magic/darknessoverload2

replaceitem entity @s[scores={subcounter=21..22},tag=!useDarknessOverload] weapon.offhand minecraft:snowball{display:{Name:"{\"text\":\"§e§l魔力の結晶§r\",\"color\":\"white\",\"underlined\":false,\"italic\":\"false\"}",Lore:["{\"text\":\"§f自身のマナを籠め、マナのまま放出することのできる\"}","{\"text\":\"§f不思議な結晶\"}","{\"text\":\"§f魔法発動には欠かせないもの\"}"]}}