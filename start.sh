if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kkskiran1st/relaxroombotbykks.git /relaxroombotbykks
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /relaxroombotbykks
fi
cd /relaxroombotbykks
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
