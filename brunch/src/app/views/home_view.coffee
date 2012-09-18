homeTemplate = require('templates/home')
loginTemplate = require('templates/login')

class exports.HomeView extends Backbone.View
  id: 'home-view'
  el: '#content-area'

  events:
    'click #try':'do_graph'

  render: ->
    FB.getLoginStatus((response) =>
      if response.status == 'connected'
        $(@el).html homeTemplate()
      else
        $(@el).html loginTemplate()
        FB.XFBML.parse()
    )
    FB.Event.subscribe('auth.login', (response) =>
        $(@el).html homeTemplate()
    )

  do_graph: (event)->
    event.preventDefault()
    FB.api('me/ogex-ice:try','POST',{example:'http://emmerling-sandbox.appspot.com/'}, (response)=>
      if not response or response.error
        console.log "Error occured: "
        console.log response.error
      else
        alert "Open Graph Action posted at " + response.id
        console.log "Post ID: " + response.id
    )
