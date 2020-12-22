###set up
scoreboard objectives add 108-AttackFlag1 custom:minecraft.damage_dealt
scoreboard objectives add 108-AttackFlag2 custom:minecraft.damage_absorbed
scoreboard objectives add 108-AttackFlag3 custom:minecraft.damage_dealt_resisted
#scoreboard objectives add 108-CHEL-Count dummy
scoreboard objectives add 108-MeleeDamage dummy
scoreboard objectives add 108-Confuse dummy
scoreboard objectives add 108-ConfuseMod dummy


execute unless block 0 0 0 shulker_box run setblock 0 0 0 shulker_box
scoreboard players set #360 counter 360
scoreboard players set #8 counter 8


