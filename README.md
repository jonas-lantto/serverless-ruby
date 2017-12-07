# Serverless Ruby with gems!

A Serverless Framework example using an AWS lambda which runs a Ruby function. Inspired by [serverless-php](https://github.com/ZeroSharp/serverless-php). 

This project demonstrates a few cool technlogies. Foremost is the amazing AWS Lambda. It's pretty exciting to see serverless architectures gaining adoption! Adding to the fun we have [serverless](https://serverless.com/), a framework for packaging and deploying across different providers including AWS, Google, and IBM. Also worth mentioning is the inclusion of Ruby. AWS Lambda supports a number of different languages natively, but Ruby is not one of them. Therefore we specially bundle the Ruby interpreter (courtesy of [Traveling Ruby](http://phusion.github.io/traveling-ruby/)) and wrap it in a Node.js script which executes it as a binary.

## Prerequsites

1. `npm install -g serverless`
2. Create a new user `serverless` in AWS Console, download the `credentials.csv` file and setup provider: [https://www.youtube.com/watch?v=HSd9uYj2LJA](https://www.youtube.com/watch?v=HSd9uYj2LJA)

## Install

```
serverless install --url https://github.com/stewartlord/serverless-ruby
```

## Ruby version
To work with selected Traveling Ruby version it is necessary to setup ruby environment to version 2.2.2 
1. `ruby --version`, should be at version 2.2.2
2. `gem install bundler`
3. `bundle install`, to get access to rake

## Build package
```
rake package
```

## Deploy Function
```
$ serverless deploy
Serverless: Packaging service...
Serverless: Uploading CloudFormation file to S3...
Serverless: Uploading artifacts...
Serverless: Uploading service .zip file to S3 (7.99 MB)...
Serverless: Updating Stack...
Serverless: Checking Stack update progress...
..............
Serverless: Stack update finished...
Service Information
service: serverless-ruby
stage: dev
region: us-east-1
api keys:
  None
endpoints:
  GET - https://xxxxxxxxxx.execute-api.us-east-1.amazonaws.com/dev/hello
functions:
  hello: serverless-ruby-dev-hello
```

## Try It Out!
```
{
    "status": 200,
    "body": "\"Hello, Juliana Hickle, from Ruby\""
}
--------------------------------------------------------------------
START RequestId: 156196fd-db3b-11e7-aed9-2539a6d5691f Version: $LATEST
END RequestId: 156196fd-db3b-11e7-aed9-2539a6d5691f
REPORT RequestId: 156196fd-db3b-11e7-aed9-2539a6d5691f  Duration: 1852.04 ms    Billed Duration: 1900 ms        Memory Size: 1024 MB    Max Memory Used: 47 MB
```
