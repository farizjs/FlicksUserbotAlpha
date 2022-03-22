from telethon.tl.functions.channels import CreateChannelRequest
import heroku3
from userbot import BOTLOG_CHATID, bot
from userbot.utils.utils import heroku_var

if BOTLOG_CHATID:
  return
if not BOTLOG_CHATID:
  r = await bot(CreateChannelRequest(
                  title="FLICKS LOGS",
                  about="My flicks logs group\n\n Join @FlicksSupport",
                  megagroup=True,),)
      
  chat_id = r.chats[0].id
  heroku_var["BOTLOG_CHATID"] = chat_id
