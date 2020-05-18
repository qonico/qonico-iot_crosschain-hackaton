# Qonico IOT - Hackaton Guide
Guide for mounting local environment to test hackaton project

## Build and run local cross-chain
1. Clone repo https://github.com/qonico/cosmos-iot on $GO_PATH/src/
2. `cd $GO_PATH/src/cosmos-iot`
3. `make install`
4. run initChain.sh present on this repo and copy genesis account information
5. `qonicod start`
6. `qonicocli rest-server`
7. `npm install -g local-cors-proxy` for reverse proxy rest-server
8. `lcp --proxyUrl http://localhost:1317`

## Build web server
1. clone repo https://github.com/qonico/qonico-client
2. `cd qonico-client`
3. `npm install`
4. `yarn start`

Local web server will be available on port 3000

## Build device simulator
1. clone repo https://github.com/qonico/qonico-pi
2. `cd qonico-pi`
3. if running single instance,
  - `npm install`
  - `npm run build`
  - `npm start`
4. if running multiple instance, you can use docker
  - `npm run docker:build`
  - `npm run docker:run` as many times as you want
  - `npm run docker:urls:mac` to get a list of ip and ports of devices to use on the web (Must check something regarding host access before working, use local instead of container until then)
  - `npm run docker:urls:linux` to get a list of ip and ports of devices to use on the web
  
## recording
### Local Setup
https://youtu.be/4slV-646uGw

### Demo
https://youtu.be/z6WSoZKsOrs
 


