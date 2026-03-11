conky.config = {
    alignment = 'bottom_right',
    background = false,
    border_width = 0,
    default_color = 'FFFFFF',
    draw_border = false,
    draw_graph_borders = false,
    draw_outline = false,
    draw_shades = false,
    use_xft = true,
    font = 'Ubuntu Mono:size=10',
    gap_x = 20,
    gap_y = 20,
    own_window = true,
    own_window_class = 'Conky',
    own_window_type = 'normal',
    own_window_transparent = true,
    own_window_argb_visual = true,
    own_window_argb_value = 180,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    double_buffer = true,
    update_interval = 2.0,
    uppercase = false,
    use_spacer = 'none',
    text_buffer_size = 16384,
    minimum_width = 280,
}

conky.text = [[
${color 00FFD0}${font Ubuntu Mono:bold:size=9}SYSTEM ${hr 1}${font}${color}
${color 80E8EB}Uptime:${color white}  $uptime
${color 80E8EB}CPU:${color white}     ${cpu}% ${cpubar 6,180}
${color 80E8EB}RAM:${color white}     $mem / $memmax ${membar 6,150}
${color 80E8EB}Swap:${color white}    $swap / $swapmax ${swapbar 6,148}

${color 00FFD0}${font Ubuntu Mono:bold:size=9}DISK ${hr 1}${font}${color}
${color 80E8EB}Root:${color white}    ${fs_used /} / ${fs_size /} ${fs_bar 6,150 /}

${color 00FFD0}${font Ubuntu Mono:bold:size=9}NETWORK ${hr 1}${font}${color}
${color 80E8EB}Up:${color white}      ${upspeed YOUR_NETWORK_INTERFACE}
${color 80E8EB}Down:${color white}    ${downspeed YOUR_NETWORK_INTERFACE}

${color 00FFD0}${font Ubuntu Mono:bold:size=9}TOP PROCESSES ${hr 1}${font}${color}
${color 80E8EB}${goto 4}Name${goto 140}CPU%${goto 190}MEM%${color}
${color white}${top name 1}${goto 140}${top cpu 1}${goto 190}${top mem 1}
${top name 2}${goto 140}${top cpu 2}${goto 190}${top mem 2}
${top name 3}${goto 140}${top cpu 3}${goto 190}${top mem 3}
${top name 4}${goto 140}${top cpu 4}${goto 190}${top mem 4}
${top name 5}${goto 140}${top cpu 5}${goto 190}${top mem 5}

${color 00FFD0}${font Ubuntu Mono:bold:size=9}CALENDAR ${hr 1}${font}${color}
${font Ubuntu Mono:bold:size=10}${execpi 300 ~/conky-cal.sh}${font}
]]
