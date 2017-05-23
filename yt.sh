#!/bin/bash

### prints line across mixinal ###
print_line() {
	printf "%$(tput cols)s\n"|tr ' ' '-'
}

#!/bin/bash

### prints line across mixinal ###
print_line() {
	printf "%$(tput cols)s\n"|tr ' ' '-'
}

network_loop() {
	if [[ -n $mix ]]; then
		MIX=$mix
		
		echo ""
		echo "Slected mix is is $MIX"
		
		echo "" >> $HOME/Music/8tracks
		echo $MIX >> $HOME/Music/8tracks
		
		echo "1) Play Mix"
		echo "2) Continuous playback with similar mixes"
		echo "3) Display extended mix info"
		echo "b) Back"
		echo ""
		
		printf "user input: "
		read -a OPTIONS_1S

		for OPT_1S in ${OPTIONS_1S[@]}; do

			case "$OPT_1S" in
				1)
					8play -P $MIX
					;;
				2)
					8play -c $MIX
					;;
				3)
					8play -Q $MIX
					;;
				b)
					;;
				*)
					echo "(!) choice invalid "
					;;
			esac
		done
	else
		echo "Exiting to main menu."
		break
	fi
}

video_loop() {

}

download_loop() {

}

filesystem_loop() {

}

video_loop() {

}

print_line

# main loop
while true; do

	### List options ###
	echo ""
	echo "CLI YouTube Downloader"
	print_line
	echo "1) Network Options"
	echo "2) Video Selection"
	echo "3) Download Options"
	echo "4) Filesystem Options"
	echo "5) Verbosity / Simulation Options"
	echo "6) Workarounds"
	echo "7) Video Format Options"
	echo "8) Subtitle Options"
	echo "9) Authentication Options"
	echo "10) Adobe Pass Options"
	echo "11) Post-processing Options"
	echo "12) Main Options"
	echo "e) Execute Command"
	echo "q) Quit"
	echo ""

	printf "user input: "
	read -a OPTIONS

	for OPT in ${OPTIONS[@]}; do

		case "$OPT" in
			1)

				;;
			2)

				;;
			3)

				;;
			4)

				done
				;;
				
			5)

				;;

			6)

				;;
			q)
				exit 1
				;;
			*)
				echo "(!) choice invalid "
				;;
		esac
	done
done