#ui-multiple-choice
*TODO* tell me all about your element.


    Polymer 'ui-multiple-choice',

##Events
*TODO* describe the custom event `name` and `detail` that are fired.

##Attributes and Change Handlers
      choices: []
      selected: []

##Methods

##Event Handlers

      choiceClicked: (event) ->
        selected.push event.target


##Polymer Lifecycle

      created: ->

      ready: ->
        @choices = []
        domChoices = @querySelectorAll('choice')

        for choice in domChoices
          @choices.push(choice.innerHTML)

      attached: ->

      domReady: ->

      detached: ->
