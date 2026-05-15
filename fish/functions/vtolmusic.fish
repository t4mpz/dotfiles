function vtolmusic
	set --local pwd (pwd)
	echo $pwd
	set --local links "$HOME/.linkslistvtol"
	if string length -q $argv[1] != 0
		set --local links $argv[1]
	end
	cd "/run/media/tampinha/nvme/SteamLibrary/steamapps/common/VTOL VR/RadioMusic/"
	for link in (cat $links)
		test -z $link && continue
		yt-dlp -x --audio-format mp3 $link
	end
	cd $pwd
end
