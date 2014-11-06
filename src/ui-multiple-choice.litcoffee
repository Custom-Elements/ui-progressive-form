#ui-multiple-choice
*TODO* tell me all about your element.


    Polymer 'ui-multiple-choice',

##Events
*TODO* describe the custom event `name` and `detail` that are fired.

##Attributes and Change Handlers

      selectedItems: null

##Methods

##Event Handlers

##Polymer Lifecycle

      created: ->
        @selectedItems = []

      ready: ->
        checkboxes = @querySelectorAll('ui-checkbox')
        multiChoice = @
        selectedItems = @selectedItems

        itemSelected = (event) ->
          selectedBox = event.target

          #If it's in multi-select mode, select/deselect amongst the entries
          if multiChoice.multiselect?
            index = selectedItems.indexOf(selectedBox)
            if index < 0
              selectedItems.push(selectedBox)
            else
              selectedItems.splice(index, 1)
          else
            #Single selection, uncheck other selections, only select one box

            if selectedItems.pop() is selectedBox
              selectedBox.checked = false
            else
              selectedItems.push(selectedBox)
              for box in checkboxes
                box.checked = box is selectedBox

          #Let clients know the selected items changed
          multiChoice.fire('change', selectedItems)

        for checkbox in checkboxes
          checkbox.addEventListener('clicked', itemSelected)

      attached: ->

      domReady: ->

      detached: ->
