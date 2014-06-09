shared-components-bower
=======================

POC using bower to share angular components

# Usage
-------
Add xl-shared-components in your bower.json configuration file, in the dependencies section:

`"shared-component": "mathieubigorne/shared-components-bower#version"`

Load the scripts files you are insterested in.

```html
<script type="text/javascript" src="path/to/component/sample.js"></script>
```

Add the modules as a dependency to your application module.

```js
var app = angular.module('app', ['xl.samples'])
```

If you are using shared directives relying on external templates:

1. Load the scripts templates.js. This file will prepopulate the angular $templateCache.
2. Add the module 'xl.templates' as a dependency yo your application.


# Contribute
------------
## Setup

1. Install **Grunt** and **Bower**
	`$ npm install -g grunt-cli bower`
2. Install development dependencies
	`$ npm install`
3. Install components
	`$ bower install`

## Testing

We use Karma and jshint to ensure the quality of the code.
Three grunt tasks are available.

1. `$ grunt unit`.
2. `$ grunt e2e`.
3. `$ grunt test` which runs both the unit tests and acceptance tests

## Publishing a new version

We use the [grunt-release plugin](https://www.npmjs.org/package/grunt-release). The versionning follows the semantic versionning described [here](http://semver.org/).

Given version X.Y.Z

#### Patch release (increments Z)
`$ grunt publish`

#### Minor release (increments Y)
`$ grunt publish:minor`

#### Major release (increments X)
`$ grunt publish:major`

#### Dry run
Use the parameter `--no-write`

You will see something like :

```
Running "release:major" (release) task
>> -------RELEASE DRY RUN-------
>> bumped version to 1.0.0
>> staged package.json
>> committed package.json
>> created new git tag: 1.0.0
>> pushed to remote git repo
>> pushed new tag 1.0.0 to remote git repo
```
