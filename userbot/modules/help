# Copyright (C) 2019 The Raphielscape Company LLC.
#
# Licensed under the Raphielscape Public License, Version 1.d (the "License");
# you may not use this file except in compliance with the License.
#
""" Userbot help command """

import asyncio
from userbot import ALIVE_NAME, CMD_HELP
from platform import uname
from userbot.utils import flicks_cmd
from userbot import CMD_HANDLER as cmd

modules = CMD_HELP

# ================= CONSTANT =================
DEFAULTUSER = str(ALIVE_NAME) if ALIVE_NAME else uname().node
# ============================================


@flicks_cmd(pattern="help(?: |$)(.*)")
async def help(event):
    """ For .help command,"""
    args = event.pattern_match.group(1).lower()
    if args:
        if args in CMD_HELP:
            await event.edit(f"✘ Commands available in {args} ✘ \n\n" + str(CMD_HELP[args]) + "\n\n💕 @TheFlicksUserbot")
        else:
            await event.edit(f"**Module** `{args}` **Tidak tersedia!**")
            await asyncio.sleep(6)
            await event.delete()
    else:
         results = await bot.inline_query(  # pylint:disable=E0602
             tgbotusername, "@FlicksSupport"
         )
         await results[0].click(
             event.chat_id, reply_to=event.reply_to_msg_id, hide_via=True
         )
         await event.delete()
     except BaseException:
         await event.edit(
             f"** Sepertinya obrolan atau bot ini tidak mendukung inline mode.**"
         )
