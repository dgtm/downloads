Dls.Router = Ember.Router.extend({
  location: 'hash',

  root: Ember.Route.extend({
    index: Ember.Route.extend({
      route: '/',

      // You'll likely want to connect a view here.
      connectOutlets: function(router) {
        router.get('applicationController').connectOutlet('request',Dls.RequestView.create);
      }

      // Layout your routes here...
    })
  })
});

