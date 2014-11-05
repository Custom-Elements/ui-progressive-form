#ui-multiple-choice
*TODO* tell me all about your element.


    Polymer 'ui-multiple-choice',

##Events
*TODO* describe the custom event `name` and `detail` that are fired.

##Attributes and Change Handlers

##Methods

##Event Handlers

##Polymer Lifecycle

      created: ->

      ready: ->
        checkboxes = @querySelectorAll('ui-checkbox')
        multiChoice = @
        @selected = []

        for checkbox in checkboxes

          checkbox.addEventListener('clicked', (event) ->
            selected = multiChoice.selected
            index = selected.indexOf(event.target)

            if index < 0
              selected.push(event.target)
            else
              selected.splice(index, 1)

            console.log(multiChoice)  

            if not (multiChoice['multi-select']?.length >= 0) 
              for box in checkboxes
                box.checked = false unless box is event.target

            multiChoice.fire('change', selected)
          )

      attached: ->

      domReady: ->

      detached: ->
