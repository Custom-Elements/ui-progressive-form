#progressive-form
*TODO* tell me all about your element.


    Polymer 'yes-no',

##Events
*TODO* describe the custom event `name` and `detail` that are fired.

##Attributes and Change Handlers

##Methods

##Event Handlers

      choiceClicked: (event) ->
        elm = event.target
        @.answer = 'true' == elm.getAttribute('value')
        @.fire 'question-answered',  @.answer

##Polymer Lifecycle

      created: ->

      ready: ->
        if @.innerHTML
          @.questionText = @.innerHTML

      attached: ->

      domReady: ->

      detached: ->
