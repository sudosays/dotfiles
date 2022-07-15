--------------------------------------
--  "Obsidian" awesome theme        --
--  By Julius Stopforth (sudosays)  --
--                                  --
--  derived from...                 --
--                                  --
--  "Zenburn" awesome theme         --
--    By Adrian C. (anrxc)          --
--------------------------------------

local themes_path = require("gears.filesystem").get_themes_dir()
local dpi = require("beautiful.xresources").apply_dpi

-- {{{ Main
local theme = {}
local wallpaper_path = string.format("%s/.config/awesome/themes/obsidian/background.png", os.getenv("HOME"))
theme.wallpaper = wallpaper_path
-- }}}

-- {{{ Styles
theme.font      = "sans 12"

-- {{{ Colors
--theme.fg_normal  = "#DCDCCC"
--theme.fg_focus   = "#F0DFAF"
--theme.fg_urgent  = "#CC9393"
--theme.bg_normal  = "#3F3F3F"
--theme.bg_focus   = "#1E2320"
--theme.bg_urgent  = "#3F3F3F"
--theme.bg_systray = theme.bg_normal
--
-- Rich black #121619
-- Slate gray #738290
-- Platinum #EAEAEA
-- Cobalt blue #164CA2
-- Burnt umber #DB5461
--
theme.fg_normal  = "#EAEAEA"
theme.fg_focus   = "#FFFFFF"
theme.fg_urgent  = "#121619"
theme.bg_normal  = "#121619"
theme.bg_focus   = "#738290"
theme.bg_urgent  = "#DB5461"
theme.bg_systray = theme.bg_normal


-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = "#121619"
theme.border_focus  = "#738290"
theme.border_marked = "#DB5461"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#121619"
theme.titlebar_bg_normal = "#121619"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#121619"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#DB5461"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themes_path .. "zenburn/taglist/squarefz.png"
theme.taglist_squares_unsel = themes_path .. "zenburn/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
local icon_path = string.format("%s/.config/awesome/themes/obsidian/%s.png", os.getenv("HOME"), "biohazard")
theme.awesome_icon           = icon_path
theme.menu_submenu_icon      = themes_path .. "default/submenu.png"
-- }}}

-- {{{ Layout
local local_theme_path = string.format("%s/.config/awesome/themes/obsidian/", os.getenv("HOME"))
theme.layout_tile       = local_theme_path .. "layouts/tile.png"
theme.layout_tileleft   = local_theme_path .. "layouts/tileleft.png"
theme.layout_tilebottom = local_theme_path .. "layouts/tilebottom.png"
theme.layout_tiletop    = local_theme_path .. "layouts/tiletop.png"
theme.layout_fairv      = local_theme_path .. "layouts/fairv.png"
theme.layout_fairh      = local_theme_path .. "layouts/fairh.png"
theme.layout_spiral     = local_theme_path .. "layouts/spiral.png"
theme.layout_dwindle    = local_theme_path .. "layouts/dwindle.png"
theme.layout_max        = local_theme_path .. "layouts/max.png"
theme.layout_fullscreen = local_theme_path .. "layouts/fullscreen.png"
theme.layout_magnifier  = local_theme_path .. "layouts/magnifier.png"
theme.layout_floating   = local_theme_path .. "layouts/floating.png"
theme.layout_cornernw   = local_theme_path .. "layouts/cornernw.png"
theme.layout_cornerne   = local_theme_path .. "layouts/cornerne.png"
theme.layout_cornersw   = local_theme_path .. "layouts/cornersw.png"
theme.layout_cornerse   = local_theme_path .. "layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = themes_path .. "zenburn/titlebar/close_focus.png"
theme.titlebar_close_button_normal = themes_path .. "zenburn/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active  = themes_path .. "zenburn/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "zenburn/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "zenburn/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themes_path .. "zenburn/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = themes_path .. "zenburn/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "zenburn/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "zenburn/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themes_path .. "zenburn/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = themes_path .. "zenburn/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = themes_path .. "zenburn/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "zenburn/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themes_path .. "zenburn/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = themes_path .. "zenburn/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "zenburn/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "zenburn/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "zenburn/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

theme.notification_max_height = dpi(100)

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
