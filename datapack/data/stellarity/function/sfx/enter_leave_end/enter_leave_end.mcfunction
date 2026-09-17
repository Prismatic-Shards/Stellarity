playsound stellarity:block.end_portal.travel ambient @s[advancements={stellarity:event/enter_leave_end={1=true}}] ~ ~1 ~ 1 1
playsound block.portal.travel ambient @s[advancements={stellarity:event/enter_leave_end={2=true}}] ~ ~ ~ 0.25 1

particle flash{color:-1} ~ ~1 ~ 0 0 0 1 1 force @a[distance=0.1..]

particle reverse_portal ~ ~1 ~ 1 1 1 .02 50 normal @a[distance=0..]

particle dragon_breath ~ ~1 ~ 0 0 0 .03 15 normal
particle dragon_breath ~ ~1 ~ 0 0 0 .06 15 normal

function stellarity:sfx/enter_leave_end/wave

advancement revoke @s only stellarity:event/enter_leave_end
