# coding: UTF-8

import settings

from flask import Flask
app = Flask(__name__)
app.config.from_object('settings')

from flask import g, redirect, url_for, session, request, render_template, abort, flash,get_flashed_messages, json

from decorators import login_required, cache_page

from gaeUtils.util import generate_key
from google.appengine.api.labs import taskqueue

@app.route('/')
def index():
    the_name = 'open graph example'
    the_desc = 'this is an open graph example'
    the_image = 'ogexp.png'
    return render_template('index.html', the_name = the_name, the_desc = the_desc,the_image = the_image)
