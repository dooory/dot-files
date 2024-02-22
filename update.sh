# /usr/bin/env sh

Answer=$1

update_bspwm () {
	cp ~/.config/bspwm/bspwmrc ./bspwm/
	echo "Updated bspwmrc config"
}

update_polybar () {
	cp ~/.config/polybar/config.ini ./polybar/
	echo "Updated polybar config"
}

if [ "$Answer" = "bsp" ]; then
	update_bspwm
elif [[ "$Answer" = "bar" ]]; then
	update_polybar
elif [[ "$Answer" = "All" ]]; then
	update_bspwm
	printf "\n"
	update_polybar
	printf "\n\nUpdated all configs"
fi