#progressive-form
*TODO* tell me all about your element.


    Polymer 'ui-progressive-form',

##Events
*TODO* describe the custom event `name` and `detail` that are fired.

##Attributes and Change Handlers

      hideBackButton: true
      questionIndex: 0
      questions: []

##Methods

##Event Handlers

      clickNext: (event) ->
        lastQuestion = @questions[@questionIndex]
        @questionIndex += 1
        if @questionIndex < @questions.length

          nextToggle = @questionIndex % 2
          lastToggle = (@questionIndex + 1) % 2

          nextElm = @.$["question-toggle-#{nextToggle}"]
          lastElm = @.$["question-toggle-#{lastToggle}"]

          nextElm.innerHTML = ''
          nextElm.appendChild @questions[@questionIndex]

          @["questionSlide#{lastToggle}"] = 'exit-left'
          @["questionSlide#{nextToggle}"] = 'enter-right'

        @.fire 'question-completed', lastQuestion



##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->
        listItems = @.querySelectorAll('li')
        for item in listItems
          @questions.push item.children[0]

        @.$['question-toggle-0'].appendChild @questions[@questionIndex]

      detached: ->
