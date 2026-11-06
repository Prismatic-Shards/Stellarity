# All these were for the cross seen above players head
# It is only visible when you have particles set to 'All',
# as it causes like 200 particles to appear at once
# My laptop, which I made this on, did not really like that.
# I was able to make a toast on it (10/10 toast)

# Update - I'm here reading this over a year later. What the fuck XD.
# Update 2 - I think another half a year passed. 
#			 The fact I wrote all of that still 
#			 amazes me to say the least.
# Update 3 -  decided to remove the 200 particles
#			  that were there to make a yellow cross sign.

particle end_rod ~ ~ ~ 0 0 0 0.11 12 force @a[distance=..32]
particle firework ~ ~ ~ 0 0 0 0.11 12 force @a[distance=..32]

particle flash{color:-1} ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
particle minecraft:poof ~ ~ ~ 0.3 0.5 0.3 0 22

# Ik this is a 'visual' file, but gimme a break
  playsound minecraft:block.respawn_anchor.deplete player @a[distance=0..] ~ ~ ~ 0.6 1.3
  playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 0.333 1.2
  playsound minecraft:entity.bat.takeoff player @a[distance=0..] ~ ~ ~ 0.88 1.1
