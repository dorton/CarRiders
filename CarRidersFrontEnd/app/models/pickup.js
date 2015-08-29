import DS from 'ember-data';

export default DS.Model.extend({
  student_name: DS.attr('string'),
  parent_name: DS.attr('string'),
  pic: DS.attr('string'),
  current_pickup: DS.attr('boolean'),
  updated_at: DS.attr('date'),
  teacher: DS.attr("string"),
  grade: DS.attr("string")
});
