#progressive-form
*TODO* tell me all about your element.


    Polymer 'progressive-form',

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

          nextElm = @.$["question-toggle-#{@questionIndex % 2}"]
          lastElm = @.$["question-toggle-#{(@questionIndex + 1) % 2}"]

          nextElm.innerHTML = ''
          nextElm.appendChild @questions[@questionIndex]
          nextElm.classList.add('move-left')

        @.fire 'question-completed', lastQuestion



##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->
        listItems = @.querySelectorAll('li')
        for item in listItems
          @questions.push item.children[0]

        console.log @questions

        @.$['question-toggle-0'].appendChild @questions[@questionIndex]

      detached: ->
