TODO: The Nimu Floatr Widget is mostly and effectively used to show some popups, alerts, or some error messages which float over the body.

## Features

You can make messenger like floating chat head.

## Getting started

![]('assets/carbon.png')

Codes:
```
               NimuFloat(
                child: CounterChild(
                  counterChild: NimuCounter(
                    count: '5',
                    backgroundColor: Colors.red,
                    countStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    height: 20,
                    width: 20,
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('Your Image'),
                  ),
                ),
                body: const Text('body content'),
              ),
```

## Usage

TODO: You can find example in `/example` folder. 
