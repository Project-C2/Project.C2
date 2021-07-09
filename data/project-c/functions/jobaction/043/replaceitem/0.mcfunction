item replace entity @s hotbar.0 with minecraft:iron_sword{Unbreakable:1b,043-powered:0b}
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{Unbreakable:1b}
item replace entity @s[tag=SkillReady1] armor.chest with minecraft:elytra{display:{Name:'{"text":"vex wings"}'},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}],HideFlags:4}
item replace entity @s[tag=!SkillReady1] armor.chest with minecraft:elytra{display:{Name:'{"text":"vex wings"}'},Damage:432,Unbreakable:1b,HideFlags:4}
scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0