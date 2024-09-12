veracrypt --mount /home/$USER/Documents/signal_encrypted /home/$USER/mnt

sleep 5

mv /home/$USER/mnt/Signal /home/$USER/.config/

signal-desktop

nohup bash -c 'sleep 10; while true; do if ps aux | grep -v grep | grep -ci signal-desktop; then sleep 5; else mv -f /home/$USER/.config/Signal /home/$USER/mnt && veracrypt --dismount /home/$USER/Documents/signal_encrypted; exit 0; fi; done' >/dev/null 2>&1 &
