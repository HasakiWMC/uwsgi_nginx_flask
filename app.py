from flask import Flask
# from flask.ext.script import Manager
flask_app = Flask(__name__)

#
# from lockerapp import create_app
# from flask_script import Manager, Server
#
#
# app = create_app('lockerapp.config.DevConfig')
# manager = Manager(app)
# manager.add_command("runserver", Server())


@flask_app.route('/')
def hello_world():
    return 'Hello World!'


if __name__ == '__main__':
    flask_app.run()
