# README

## Introduction

This is an simple Go application that you can deploy to Heroku.

This app contains two command: `app` and `worker`.

## Usage

1. Clone this repository

    ```
    git clone git@github.com:ansidev/heroku-go-simple.git
    ```

    or click the deploy button

    [![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

2. Make sure you installed heroku CLI.
3. Run `heroku create` to create new app or ignore this step if you created.
4. Run `./deploy.sh {app_name}` to deploy this application to Heroku.
5. Open your app, you will see "Hello, world!"
6. Open Heroku Console from Heroku Dashboard, then run `/worker`. You will see something like below:
    ```
    worker 3 started  job 1
    worker 1 started  job 2
    worker 2 started  job 3
    worker 2 finished job 3
    worker 2 started  job 4
    worker 3 finished job 1
    worker 3 started  job 5
    worker 1 finished job 2
    worker 3 finished job 5
    worker 2 finished job 4
    ```