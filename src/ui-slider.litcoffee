#ui-slider
*TODO* tell me all about your element.


    Polymer 'ui-slider',

##Events
*TODO* describe the custom event `name` and `detail` that are fired.

##Attributes and Change Handlers

##Methods

##Event Handlers

##Polymer Lifecycle

      created: ->

      ready: ->
      	markers = @querySelectorAll("slide-marker")
      	@markerLabels = []

      	for mark in markers 
      		@markerLabels.push(mark.innerText)



      attached: ->

      domReady: ->

      detached: ->
