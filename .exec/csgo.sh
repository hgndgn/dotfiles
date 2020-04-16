#!/bin/bash 

echo 'Configuration for CS:GO is setting up ...'

csgo_local_config_dir=/home/gnd/.steam/steam/userdata/$1/730/local/cfg

echo 'setup autoexec config ...'

launch_options='+exec new_gnd -novid +snd_use_hrtf -nojoy 0 -threads 12 -refresh 144 -d3d9ex -tickrate 128 -high -no-browser -console -freq 144 -heapsize 4194304 +cl_forcepreload 1'

# OS mouse sensitivity: 6/11

config='
sv_cheats 1

# In-Game
gameinstructor_enable "0"
con_enable "1"
cl_disablehtmlmotd "1"
cl_disablefreezecam "1"
cl_autohelp "0"
cl_showhelp "0"

cl_bob_lower_amt "21";
cl_bobamt_lat "0.33";
cl_bobamt_vert "0.14";
cl_bobcycle "0.98";
cl_interp "0.031000"
cl_interp_ratio "1"

# Keybinds
bind "c" "+voicerecord"
bind "ALT" "slot5; slot10"                # Motolof & Bomb
bind "MOUSE3" "slot1"
bind "MOUSE4" "slot8"
bind "MOUSE5" "slot7"
# Remove blood etc.
bind "a" "+moveleft; r_cleardecals"
bind "d" "+moveright; r_cleardecals"
bind "w" "+forward; r_cleardecals"
bind "s" "+back; r_cleardecals"

# Sync
cl_cmdrate "128"
cl_updaterate "128"
rate "9999999"

# Sound
snd_mixahead "0.05"
snd_musicvolume "0"
snd_menumusic_volume "0"
snd_dzmusic_volume "0"
snd_mvp_volume "0" 
snd_headphone_pan_exponent "2"
snd_headphone_pan_radial_weight "2"
snd_legacy_surround "0"
snd_pitchquality "1"
snd_deathcamera_volume "0"
snd_mapobjective_volume "0.0"
snd_roundend_volume "0.05"
snd_tensecondwarning_volume 0.15
snd_mute_losefocus 0
snd_deathcamera_volume "0.3"
snd_duckerattacktime "0.5"
snd_duckerreleasetime "2.5"
snd_duckerthreshold "0.15"
snd_ducking_off "1"
snd_ducktovolume "0.55"
snd_dzmusic_volume "0.2"
snd_hrtf_distance_behind "100"
snd_hrtf_voice_delay "0.1"
snd_hwcompat "0"
snd_mapobjective_volume "0"
snd_menumusic_volume "0.000000"
snd_mix_async "1"
snd_mix_async_onetime_reset "1"
snd_mixahead "0.05"
snd_music_selection "1"
snd_music_volume_onetime_reset_2 "1"
snd_musicvolume_multiplier_inoverlay "0.1"
snd_mute_losefocus "0"
snd_mute_mvp_music_live_players "0"
snd_mvp_volume "0.0"
snd_pitchquality "1"
snd_roundend_volume "0"
snd_roundstart_volume "0"
snd_surround_speakers "0"
snd_tensecondwarning_volume "0"
dsp_enhance_stereo "0"
voice_mixer_volume "0.4"
voice_enable "1"
voice_scale "0.5"
volume "0.6"
lobby_voice_chat_enabled "0"

# Monitor
mat_monitorgamma "1.75"
mat_monitorgamma_tv_enabled "0"
mat_queue_mode "2"
mat_monitorgamma_tv_enabled "0"
mat_powersavingsmode "0"
fps_max "0"
fps_max_menu "999"
r_drawtracers_firstperson 1
r_dynamic "0"
r_eyegloss "0"
r_eyemove "0"
muzzleflash_light "0"

# Viewmodel
viewmodel_presetpos "0"
viewmodel_fov "68"
viewmodel_offset_x "2.5"
viewmodel_offset_y "3"
viewmodel_offset_z "-1.500000"
cl_viewmodel_shift_left_amt "0"
cl_viewmodel_shift_right_amt "0"

# Mouse/Crosshair Settings
m_customaccel "3"
m_customaccel_exponent "1.1"
m_customaccel_max "0"
m_customaccel_scale "0.0035"
sensitivity "1.60"

# Crosshair
cl_crosshair_sniper_width "1"
cl_crosshairsize "2.0"
cl_crosshairgap "-1.0"
cl_crosshairalpha "255"
cl_crosshairstyle "4"
cl_crosshairthickness "0.55"
cl_crosshair_drawoutline "0"
cl_crosshaircolor_b "255"
cl_crosshaircolor_g "255"
cl_crosshaircolor_r "0"
cl_crosshairdot "0"
cl_crosshaircolor "1"
cl_fixedcrosshairgap "-5"

# Radar & Hud
cl_radar_always_centered 1
cl_radar_scale 0.3
cl_hud_radar_scale 1.3
cl_radar_icon_scale_min 0.6
cl_radar_rotate 1
cl_radar_square_with_scoreboard 1
cl_hud_background_alpha "0.00000"
cl_hud_bomb_under_radar "1"
cl_hud_color "2"
cl_hud_healthammo_style "1"
cl_hud_playercount_pos "1"
cl_hud_playercount_showcount "1"
cl_hud_radar_scale "1.3000000"
hud_scaling "1"

# Show Teammates
cl_teamid_overhead_always 1
cl_teammate_colors_show 1
bind tab "+score;+cl_show_team_equipment"

# Jump Throw
alias "+jumpthrow" "+jump;-attack"
alias "-jumpthrow" "-jump"
bind "f" "+jumpthrow"

# Other
closeonbuy "0"
mm_dedicated_search_maxping "100"
cl_timeout "9999"
cl_forcepreload "1"
cl_showhelp 0
cl_autowepswitch "0"
cl_use_opens_buy_menu "0"
cl_mute_enemy_team "1"

+cl_show_team_equipment
+cl_showfps 1

# Aliases
alias sfps "cl_showfps 1"
sfps 1

ECHO =======================
ECHO ===[  !!! GND !!! ]====
ECHO =======================

host_writeconfig
'

echo "$config" > $csgo_local_config_dir/autoexec.cfg

echo 'setup training config ...'

config_training='
sv_cheats 1
mp_maxmoney 50000
mp_startmoney 50000
mp_freezetime 1
mp_roundtime_defuse 60
mp_roundtime_hostage 60
mp_buy_anywhere 1
mp_buytime 1000
sv_infinite_ammo 2
mp_warmup_end
bot_kick all
mp_solid_teammates 1
god 1
fps_max "300"
cl_showfps "0"
fps_max_menu "999"
closeonbuy "0"
mat_queue_mode 2
volume ".34"
cl_invites_only_friends 1
cl_invites_only_mainmenu 1
cl_grenadepreview 1
sv_grenade_trajectory 1
bind c noclip
'

echo "$config_training" > $csgo_local_config_dir/training.cfg
echo "Finished"
