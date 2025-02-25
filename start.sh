if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Nikhil792/Movie-Provider-bot/tree/main
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ThorAutoFilter2Bot
fi
cd /ThorAutoFilter2Bot
pip3 install -U -r requirements.txt
echo "Starting ThorAutoFilter2Bot...."
python3 bot.py
