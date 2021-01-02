function project-c:general/getsamenumplayer

execute positioned as @a[tag=sameNumPlayer] run summon minecraft:lightning_bolt ~ ~ ~

tag @a[tag=sameNumPlayer] remove sameNumPlayer

kill @s