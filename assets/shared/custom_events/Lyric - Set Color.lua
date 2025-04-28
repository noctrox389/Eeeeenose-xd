function onEvent(name, value1, value2)
	if name == 'Lyric - Set Color' then
		if value1 == "" then
            setTextColor('lyrictext', 'ffffff')
        else
            setTextColor('lyrictext', value1)
        end
	end
end

-- TO BE USED ALONGSIDE "Lyric - Set Text"

-- By Avis, credit appreciated if used