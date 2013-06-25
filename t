while true; do
   xsetroot -name "$( date +"%F %R" ) $(uptime |  cut -f4,5 -d " " | cut -f1 -d,)"
      sleep 1m    # Update time every minute
      done &
# pidgin &
google-chrome &
