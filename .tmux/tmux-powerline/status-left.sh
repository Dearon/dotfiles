#!/usr/bin/env bash
#Print the status-left for tmux.
#
# The powerline root directory.
cwd=$(dirname $0)

# Source global configurations.
source "${cwd}/config.sh"

# Source lib functions.
source "${cwd}/lib.sh"

segments_path="${cwd}/${segments_dir}"

# Mute this statusbar?
mute_status_check "left"

# Segments

declare -A tmux_session_info
tmux_session_info+=(["script"]="${segments_path}/tmux_session_info.sh")
tmux_session_info+=(["foreground"]="colour234")
tmux_session_info+=(["background"]="colour148")
tmux_session_info+=(["separator"]="${separator_right_bold}")
#tmux_session_info+=(["separator_fg"]="default")
#register_segment "tmux_session_info"

declare -A hostname
hostname+=(["script"]="${segments_path}/hostname.sh")
hostname+=(["foreground"]="colour0")
hostname+=(["background"]="colour33")
hostname+=(["separator"]="${separator_right_bold}")
#register_segment "hostname"

declare -A lan_ip
lan_ip+=(["script"]="${segments_path}/lan_ip.sh")
lan_ip+=(["foreground"]="colour255")
lan_ip+=(["background"]="colour24")
lan_ip+=(["separator"]="${separator_right_bold}")
#register_segment "lan_ip"

declare -A wan_ip
wan_ip+=(["script"]="${segments_path}/wan_ip.sh")
wan_ip+=(["foreground"]="colour255")
wan_ip+=(["background"]="colour24")
wan_ip+=(["separator"]="${separator_right_thin}")
wan_ip+=(["separator_fg"]="white")
#register_segment "wan_ip"

declare -A vcs_branch
vcs_branch+=(["script"]="${segments_path}/vcs_branch.sh")
vcs_branch+=(["foreground"]="colour88")
vcs_branch+=(["background"]="colour29")
vcs_branch+=(["separator"]="${separator_right_bold}")
#register_segment "vcs_branch"

## New segments
declare -A date_day
date_day+=(["script"]="${segments_path}/date_day.sh")
date_day+=(["foreground"]="colour234")
date_day+=(["background"]="colour148")
date_day+=(["separator"]="${separator_right_thin}")
#register_segment "date_day"

declare -A date_full
date_full+=(["script"]="${segments_path}/date_full.sh")
date_full+=(["foreground"]="colour234")
date_full+=(["background"]="colour148")
date_full+=(["separator"]="${separator_right_thin}")
date_full+=(["separator_fg"]="default")
register_segment "date_full"

declare -A time
time+=(["script"]="${segments_path}/time.sh")
time+=(["foreground"]="colour234")
time+=(["background"]="colour148")
time+=(["separator"]="${separator_right_thin}")
time+=(["separator_fg"]="colour234")
#time+=(["separator_fg"]="default")
register_segment "time"

declare -A load
load+=(["script"]="${segments_path}/load.sh")
load+=(["foreground"]="colour0")
load+=(["background"]="colour33")
load+=(["separator"]="${separator_right_bold}")
register_segment "load"

# Print the status line in the order of registration above.
print_status_line_left

exit 0
