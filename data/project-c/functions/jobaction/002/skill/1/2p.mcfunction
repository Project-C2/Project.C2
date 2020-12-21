function project-c:general/getsamenumplayer

execute positioned as @a[tag=sameNumPlayer] run summon minecraft:fireball ~ ~1 ~ {Motion:[0.0d,-1.0d,0.0d],ExplosionPower:1}

tag @a[tag=sameNumPlayer] remove sameNumPlayer

kill @s