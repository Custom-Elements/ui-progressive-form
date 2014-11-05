#progressive-form
*TODO* tell me all about your element.


    Polymer 'ui-yes-no',

##Events

####clicked
Fired when 'Yes' or 'No' are clicked.


##Attributes and Change Handlers

##Methods

      toggleAnswer: (clicked, notClicked, val) ->
        if not @$[clicked].checked
          #When an answer is unchecked, the answer has been unspecified.
          #It's not yes or no, it's nothing.
          @answer = null
        else
          @answer = val

        @fire 'clicked',  @answer

        @$[notClicked].checked = false


##Event Handlers

      yesClicked: (event) ->
        @toggleAnswer('yes', 'no', true)

      noClicked: (event) ->
        @toggleAnswer('no', 'yes', false)

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
