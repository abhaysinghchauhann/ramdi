if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/abhaysinghchauhann/ramdi.git /ramdi
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ramdi
fi
cd /relaxroombotbykks
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
