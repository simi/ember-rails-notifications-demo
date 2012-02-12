EmberTest.Notifications = Ember.ArrayController.create
  content: []
  from: null

  refresh: -> (
    from = this.get('from')
    url = "/notifications/?from=#{from}"
    $.getJSON(url,  (data) ->
      EmberTest.Notifications.pushObject(EmberTest.Notification.create(notification)) for notification in data
    )
    EmberTest.Notifications.set("from", Math.round(new Date().getTime() / 1000))
  )
