import DS from 'ember-data';

export default DS.Model.extend({
  student_name: DS.attr('string'),
  parent_name: DS.attr('string'),
  pic: DS.attr('string'),
  updated_at: DS.attr('date')
});
