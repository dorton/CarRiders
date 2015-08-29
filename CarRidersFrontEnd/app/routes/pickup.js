import Ember from 'ember';

export default Ember.Route.extend({

  model: function(params){
  return this.store.find('pickup', { current_pickup: true }).then(function(pickups)
    {
      return pickups.sortBy('updated_at');

    });
},


        actions: {
          reset: function(pickup){
            let route = this;
            pickup.set('current_pickup', false);
            pickup.save().then(function(){
              route.refresh();
            })
          }
        }
});
