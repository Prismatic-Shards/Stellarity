fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace end_portal

# Facing north
execute \
	if block ~1 ~ ~ end_portal_frame[facing=north] \
	unless block ~-1 ~ ~ end_portal_frame[facing=north] \
	positioned ~1 ~ ~-2 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker
execute \
	if block ~1 ~ ~ end_portal_frame[facing=north] \
	if block ~-1 ~ ~ end_portal_frame[facing=north] \
	positioned ~ ~ ~-2 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker
execute \
	if block ~-1 ~ ~ end_portal_frame[facing=north] \
	unless block ~1 ~ ~ end_portal_frame[facing=north] \
	positioned ~-1 ~ ~-2 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker

# Facing west
execute \
	if block ~ ~ ~-1 end_portal_frame[facing=west] \
	unless block ~ ~ ~1 end_portal_frame[facing=west] \
	positioned ~-2 ~ ~-1 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker
execute \
	if block ~ ~ ~-1 end_portal_frame[facing=west] \
	if block ~ ~ ~1 end_portal_frame[facing=west] \
	positioned ~-2 ~ ~ \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker
execute \
	if block ~ ~ ~1 end_portal_frame[facing=west] \
	unless block ~ ~ ~-1 end_portal_frame[facing=west] \
	positioned ~-2 ~ ~1 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker

# Facing south
execute \
	if block ~-1 ~ ~ end_portal_frame[facing=south] \
	unless block ~1 ~ ~ end_portal_frame[facing=south] \
	positioned ~-1 ~ ~2 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker
execute \
	if block ~-1 ~ ~ end_portal_frame[facing=south] \
	if block ~1 ~ ~ end_portal_frame[facing=south] \
	positioned ~ ~ ~2 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker
execute \
	if block ~1 ~ ~ end_portal_frame[facing=south] \
	unless block ~-1 ~ ~ end_portal_frame[facing=south] \
	positioned ~1 ~ ~2 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker

# Facing east
execute \
	if block ~ ~ ~1 end_portal_frame[facing=east] \
	unless block ~ ~ ~-1 end_portal_frame[facing=east] \
	positioned ~2 ~ ~1 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker
execute \
	if block ~ ~ ~1 end_portal_frame[facing=east] \
	if block ~ ~ ~-1 end_portal_frame[facing=east] \
	positioned ~2 ~ ~ \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker
execute \
	if block ~ ~ ~-1 end_portal_frame[facing=east] \
	unless block ~ ~ ~1 end_portal_frame[facing=east] \
	positioned ~2 ~ ~-1 \
	run function stellarity:sfx/end_portal/raycast/checks/summon_marker
