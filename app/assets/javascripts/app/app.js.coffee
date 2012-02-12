@EmberTest = Ember.Application.create
  ready: ->
    setInterval(->
      EmberTest.Notifications.refresh()
    , 2000)

    EmberTest.Notifications.set("from", Math.round(new Date().getTime() / 1000))
    this._super
