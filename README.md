# Sample Project

This project includes two components - a SPA in `frontend` and an REST API server in `backend`

## Prerequisites

You will need the following software:

* Node.js (v22 or later should work)

## Development mode

To start the components in development mode, the process is to navigate to the corresponding directory and run
```
npm install --include dev
```
and then run
```
npm run dev
```

You will be informed about the ports in use on the commandline.


## Deployment

In each project you can produce deployable code with
```
npm run build
```
In each case the result will be compiled code in the dist/ directory.

For the frontend this means HTML, CSS and JS sources ready to be served from a webserver
(you cannot simply open them in a browser, due to CORS)
