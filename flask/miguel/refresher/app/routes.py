from app import app
from flask import render_template


@app.route("/")
def index():
    return "<h1>Hi</h1>"


@app.route("/dashboard", methods=["GET", "POST"])
def dashboardHome():
    return "You are in the home"


@app.route("/dashboard/profile", methods=["GET", "POST"])
def profile():
    return render_template("profile.html")
