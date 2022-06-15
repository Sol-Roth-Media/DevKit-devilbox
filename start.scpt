on run argv
  tell application "iTerm"
    set newWindow to (create window with default profile)
    tell current session of newWindow
      write text "echo " & item 1 of argv
      write text "cd ~/dev/DevKit/servers/DevKit-devilbox"
      write text "docker-compose up php httpd bind mysql"
    end tell
  end tell
end run
