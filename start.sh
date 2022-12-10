if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/WhiteDevilSM/My_at_filter_pro.git /My_at_filter_pro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /My_at_filter_pro
fi
cd  /My_at_filter_pro
pip3 install -U -r requirements.txt
echo "Starting SM_Bot...."
python3 bot.py
