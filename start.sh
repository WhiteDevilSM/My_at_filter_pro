if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/WhiteDevilSM/My_at_filter_pro.git /RashmikaBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RashmikaBot
fi
cd /RashmikaBot
pip3 install -U -r requirements.txt
echo "Starting SM_Bot...."
python3 bot.py
