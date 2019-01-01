set x to hours of (current date)
if x < 6 then
	say "bonsoir bienvenue"(* voice french *) using "Amelie"
else if x < 18 then
	say "bonjour bienvenue" (* voice french *) using "Amelie"
else if x ≥ 18 then
	say "bonsoir bienvenue"(* voice french *) using "Amelie"
end if
tell application "Safari"
	open location "https://www.youtube.com/?gl=FR&hl=fr"
	open location "https://outlook.live.com/mail/inbox"
	open location "https://www.facebook.com"
	activate
end tell
(* this code adjust the volume in function of the time *)
set x to hours of (current date)
repeat
	delay 900
	if x ≤ 6 then
		set volume output volume 15
		say "Bonne nuit" using "Amelie"
	else if x ≤ 18 then
		set volume output volume 30
	else if x ≤ 21 then
		set volume output volume 15
	else if x ≤ 23 then
		set volume output volume 15
		say "Bonne nuit" (* voice french *)using "Amelie"
		
	end if
  (* code tu change the brightness begin here *)
	repeat
		delay 900
		set x to hours of (current date)
		set x to x - 5
		if 0 = x then
			tell application "System Preferences"
			activate
				set current pane to pane "com.apple.preference.displays"
				tell application "System Events"
					delay 1
					set value of slider 1 of group 1 of tab group 1 of window 1 of process "System Preferences" to 0.1111 * 0
					delay 1
				end tell
				quit
			end tell
		else if 9 ≥ x then
			tell application "System Preferences"
				set current pane to pane "com.apple.preference.displays"
				tell application "System Events"
					delay 1
					set value of slider 1 of group 1 of tab group 1 of window 1 of process "System Preferences" to 0.1111 * x
					delay 1
				end tell
				quit
			end tell
		else if 17 ≥ x then
			set x to x - 9
			tell application "System Preferences"
				set current pane to pane "com.apple.preference.displays"
				tell application "System Events"
					delay 1
					set value of slider 1 of group 1 of tab group 1 of window 1 of process "System Preferences" to 1 / (x * 11.11)
					delay 1
				end tell
				quit
			end tell
			set x to x + 9
		else
			tell application "System Preferences"
				set current pane to pane "com.apple.preference.displays"
				tell application "System Events"
					delay 1
					set value of slider 1 of group 1 of tab group 1 of window 1 of process "System Preferences" to 0.1111 * 0
					delay 1
				end tell
				quit
			end tell
		end if
		
	end repeat
end repeat 
