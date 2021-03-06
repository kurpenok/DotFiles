#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$WAYLAND_DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
	eval `dbus-launch --sh-syntax --exit-with-session`

	pipewire &
	pipewire-pulse &
	wireplumber &

	exec sway
fi

