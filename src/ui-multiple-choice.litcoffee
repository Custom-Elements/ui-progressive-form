#ui-multiple-choice
*TODO* tell me all about your element.


    Polymer 'ui-multiple-choice',

##Events
*TODO* describe the custom event `name` and `detail` that are fired.

##Attributes and Change Handlers
      choices: []

##Methods

      boo: (data) ->
        console.log @
        div = document.createElement("div")
        div.innerHTML = data
        div.innerHTML


##Event Handlers

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->
        @choices = []
        domChoices = @.querySelectorAll('choice')

        for choice in domChoices
          @choices.push(choice.innerHTML)

      detached: ->
