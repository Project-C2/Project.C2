item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"キアンノツエ"}',Lore:['{"text":"アニマディヴァイン＿＿光の深淵の神弩……","italic":false}']}} 1
function project-c:jobaction/035/setarrow
scoreboard players add @s counter_2 0
scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0