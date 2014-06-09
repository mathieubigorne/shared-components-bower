var browserName = process.env.KARMA_BROWSER;
if (!browserName) {
    browserName = 'chrome';
}

exports.config = {
    baseUrl: 'http://localhost:4545/test/e2e/',
    specs: ['**/*.coffee'],
    capabilities: {
        'browserName': (process.env.KARMA_BROWSER || 'chrome').toLowerCase()
    },
    framework: 'jasmine',
    jasmineNodeOpts: {
        showColors: true,
        defaultTimeoutInterval: 30000
    },
    onPrepare: function() {
        addLibraries({'_': 'lodash'});
        addJQueryLocator();

        require('jasmine-reporters');
        jasmine.getEnv().addReporter(new jasmine.ConsoleReporter());

        var dslFiles = require("glob").sync("./dsl/**/*.coffee", {cwd: __dirname});
        _.each(dslFiles, require);

        function addLibraries(libraries) {
            for(var key in libraries) {
                global[key] = require(libraries[key]);
            }
        }

        function addJQueryLocator() {
            By.addLocator('$', function() {
                var selector = arguments[0];
                var using = arguments[1] || document;
                var results = $(using).find(selector);
                var matches = [];
                if (!$.isArray(results)) {
                    matches.push(results.get(0));
                } else {
                    for (var i = 0; i < results.length; ++i) {
                        matches.push(results[i][0]);
                    }
                }
                return matches; // Return the whole array for webdriver.findElements.
            });
        }
    }
};
