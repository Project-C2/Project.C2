execute if entity @s[scores={Mana=..599,subcounter=21}] run kill @e[type=snowball,distance=..5,limit=1]
execute if entity @s[scores={Mana=..399,subcounter=22}] run kill @e[type=snowball,distance=..5,limit=1]

execute if entity @s[scores={Mana=600..,subcounter=21}] run function project-c:jobaction/073/magic/darknessoverload1
execute if entity @s[scores={Mana=400..,subcounter=22}] run function project-c:jobaction/073/magic/darknessoverload2

item replace entity @s[scores={subcounter=21..22},tag=!useDarknessOverload] weapon.offhand with minecraft:snowball{display:{Name:'{"text":"��e��l���͂̌�����r","color":"white","underlined":false,"italic":"false"}',Lore:['{"text":"��f���g�̃}�i���Ă߁A�}�i�̂܂ܕ��o���邱�Ƃ̂ł���"}','{"text":"��f�s�v�c�Ȍ���"}','{"text":"��f���@�����ɂ͌������Ȃ�����"}']}}