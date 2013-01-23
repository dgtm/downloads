Dls.RequestController = Ember.ObjectController.extend
	getValue: (val) -> 
		error = false
		unless result = !!@.get(val)
			error = true
			@.set("#{val}Error", error)
		result

	validateUrl: ->
		@.getValue('url')
# Business Logic in Controllers
# DOM logic in views