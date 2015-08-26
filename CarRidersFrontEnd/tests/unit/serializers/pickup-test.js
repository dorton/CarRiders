import { moduleForModel, test } from 'ember-qunit';

moduleForModel('pickup', 'Unit | Serializer | pickup', {
  // Specify the other units that are required for this test.
  needs: ['serializer:pickup']
});

// Replace this with your real tests.
test('it serializes records', function(assert) {
  var record = this.subject();

  var serializedRecord = record.serialize();

  assert.ok(serializedRecord);
});
