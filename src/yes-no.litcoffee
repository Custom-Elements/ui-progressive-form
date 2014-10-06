#progressive-form
*TODO* tell me all about your element.


    Polymer 'yes-no',

##Events
*TODO* describe the custom event `name` and `detail` that are fired.

##Attributes and Change Handlers

##Methods

##Event Handlers

      choiceClicked: (event) ->
        @.answer = 'true' == event.target.getAttribute('value')
        @.fire 'question-answered',  @.answer

##Polymer Lifecycle

      created: ->

      ready: ->
        @.questionText = @.innerHTML

      attached: ->

      domReady: ->

      detached: ->
