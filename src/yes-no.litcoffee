#progressive-form
*TODO* tell me all about your element.


    Polymer 'yes-no',

##Events

####clicked
Fired when 'Yes' or 'No' are clicked.


##Attributes and Change Handlers

      questionText: null

The text of the question.

##Methods

##Event Handlers

      choiceClicked: (event) ->
        elm = event.target
        @answer = 'true' == elm.getAttribute('value')
        @fire 'clicked',  @answer

##Polymer Lifecycle

      created: ->

      ready: ->
        if @.innerHTML
          @questionText = @.innerHTML

      attached: ->

      domReady: ->

      detached: ->
