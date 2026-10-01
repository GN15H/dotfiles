-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- Catch-all default; specific rules below override it.
hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})

hl.monitor({
	output = "DP-6",
	mode = "preferred",
	position = "auto",
	scale = "1.20", -- 1920/1.25 = 1536, 1080/1.25 = 864 (exact; 1.4 is not a valid fractional scale here)
})

hl.monitor({
	output = "HDMI-A-6",
	disabled = true,
	mode = "preferred",
	position = "auto",
	scale = "1.2",
})

--Two monitors (uncomment for usage)
-- hl.monitor({
-- 	output = "DP-1",
-- 	mode = "1920x1080",
-- 	position = "0x0",
-- 	scale = "1",
-- })
--
-- hl.monitor({
-- 	output = "DP-2",
-- 	mode = "1920x1080",
-- 	position = "1920x0",
-- 	scale = "auto",
-- })
