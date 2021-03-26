execute if entity @e[tag=129-2-using-other] run tellraw @s {"text":"他のトーテムを使用中です"}
execute if entity @e[tag=129-2-use-now] run tellraw @s {"text":"このトーテムは使用中です"}
execute unless entity @e[tag=129-2-used] unless entity @e[tag=129-2-using-other] run tellraw @s {"text":"このトーテムは使用済みです"}