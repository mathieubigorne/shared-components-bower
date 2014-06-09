class Browser
  @open: () ->
    browser.get '#/'
    @

  @open: (url)   ->
    browser.get url
    @

  @setDefaultSize: ->
    browser.manage().window().setSize(1024, 800)

  @setSize: (width, height) ->
    browser.manage().window().setSize(width, height)

  @expectUrlToBe: (url) ->
    expect(browser.getCurrentUrl()).toContain url
    @

  @wait: (conditionFunction, message) ->
    browser.wait conditionFunction, 40000, message

  @waitFor: (cssSelector) ->
    @wait ->
      element(By.$(cssSelector)).isPresent()
    , "waiting for '#{cssSelector}' to be present"

  @scrollTo: (locator) ->
    scrollIntoView = ->
      arguments[0].scrollIntoView()
    @executeVoidScript(scrollIntoView, browser.findElement(locator))

  @executeVoidScript: (scriptFunction, scriptArguments...) ->
    script = '(' + scriptFunction + ').apply(null, arguments);';
    browser.executeScript(script, scriptArguments...)

global.Browser = Browser
