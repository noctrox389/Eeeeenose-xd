local lyrictextsize = 34 -- Size of lyric text (default 34)
local lyrictextyoffset = 50 -- Y Offset of lyric when appearing or disappearing (default 50)

-- more variables in onCreate

function onCreate()

	lyricPos = 550 -- Text Y Postion on upscroll (default 550)
	if downscroll then
		lyricPos = 720-550 -- Text Y position on downscroll (default 720-550)
	end

	lyricfadetime = crochet/1500 -- time it takes for the lyric to fade in or out (default: crochet/1500)

	makeLuaText('lyrictext', '', 1000, (screenWidth/2)-(getTextWidth('lyrictext')/2), lyricPos)
	setTextBorder('lyrictext', 2, '000000')
	setTextColor('lyrictext', 'ffffff')
	setTextSize('lyrictext', lyrictextsize) -- Sets text size
	setProperty('lyrictext.x', (screenWidth/2)-(getTextWidth('lyrictext')/2))
    --setTextFont('lyrictext', 'epicfont.ttf') -- uncomment & change this to whatever font you want that's in your mod's 'fonts' folder
	setTextAlignment('lyrictext', 'center') -- Center-aligns the text
	addLuaText('lyrictext')
end

function onEvent(name, value1, value2)
	if name == 'Lyric - Set Text' then
		if value1 ~= '' then
			-- Make the text appear when value1 is not empty
			setProperty('lyrictext.y', getProperty('lyrictext.y') + lyrictextyoffset)
			setProperty('lyrictext.alpha', 0)
			doTweenY('lyricanim', 'lyrictext', lyricPos, lyricfadetime * 2, 'quadOut')
			doTweenAlpha('lyricanim2', 'lyrictext', 1, lyricfadetime * 2, 'quadOut')
			setTextString('lyrictext', value1)
		else
			-- Make the text disappear when value1 is empty
			doTweenY('lyricanim', 'lyrictext', getProperty('lyrictext.y') + lyrictextyoffset, lyricfadetime, 'quadIn')
			doTweenAlpha('lyricanim2', 'lyrictext', 0, lyricfadetime, 'quadIn')
		end
	end
end

-- By Avis, credit appreciated if used