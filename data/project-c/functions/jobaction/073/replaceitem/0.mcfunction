replaceitem entity @s hotbar.0 minecraft:book{display:{Name:'{"text":"§5§l魔導書§r","color":"white","underlined":false,"italic":false}',Lore:['{"text":"§f魔力を司りし者に与えられる書"}','{"text":"§f自身が使えることのできる魔法が"}','{"text":"§f自動でインベントリ内に表示される"}','{"text":"§f表示されたものをクリックすることで"}','{"text":"§fその魔法を発動することが可能となる"}']}}

replaceitem entity @s[scores={subcounter=1..20}] weapon.offhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"§e§l魔力の杖§r","color":"white","underlined":false,"italic":false}',Lore:['{"text":"§f自身のマナを具現化することができる杖"}','{"text":"§f魔法発動には欠かせないもの"}']}}

replaceitem entity @s[scores={subcounter=21..22},tag=!useDarknessOverload] weapon.offhand minecraft:snowball{display:{Name:'{"text":"§e§l魔力の結晶§r","color":"white","underlined":false,"italic":false}',Lore:['{"text":"§f自身のマナを籠め、マナのまま放出することのできる"}','{"text":"§f不思議な結晶"}','{"text":"§f魔法発動には欠かせないもの"}']}}

replaceitem entity @s[scores={counter_4=1..}] hotbar.3 golden_sword{display:{Name:'{"text":"glass sword"}',Lore:['{"text":"§f手にしている者のマナを喰らい"}','{"text":"§f自身を強化する魔剣"}','{"text":"§5使用者のマナが枯渇すると"}','{"text":"§5マナを求め周囲の魔素を暴走させ壊れる"}']},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:4}],HideFlags:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.05,Operation:0,UUID:[I;-1663900442,-1354611267,-1541575511,1659080247],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.5,Operation:0,UUID:[I;-1663900442,-1354611267,-1541575511,1659080247],Slot:"mainhand"}]}

function project-c:jobaction/073/replaceitem/ethereum

scoreboard players reset @s drop
