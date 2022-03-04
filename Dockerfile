# Using Python Slim-Buster
FROM kyyex/kyy-userbot:buster
#━━━━━ Userbot Telegram ━━━━━
#━━━━━ By Flicks-Userbot ━━━━━

RUN git clone -b Flicks-Userbot https://github.com/farizjs/FlicksUserbotAlpha /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/farizjs/FlicksUserbotAlpha/Flicks-Userbot/requirements.txt

RUN pip3 install -r nodejs

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
