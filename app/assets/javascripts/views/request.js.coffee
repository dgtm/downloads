Dls.RequestView = Ember.View.extend
	templateName: 'request'
	urlError: true

Dls.RequestTextField = Ember.TextField.extend
	focusOut: (event) ->
		controller = @.get('parentView.controller')
		viewName = @.get('viewName')
		validatorName = "#{Em.String.classify(viewName)}"
		controller["validate#{validatorName}"]()
		# Ask the Controller what is the state of the ValidatorName ? 