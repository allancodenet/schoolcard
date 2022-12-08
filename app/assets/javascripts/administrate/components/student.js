var xhr;
var select_stream, $select_stream;
var select_substream, $select_substream;

$select_stream = $('#student_stream_id').selectize({
  onChange: function(value) {
    if (!value.length) return;
    select_substream.disable();
    select_substream.clear();
    select_substream.clearOptions();
    select_substream.load(function(callback) {
      xhr && xhr.abort();
      xhr = $.ajax({
        url: 'http://127.0.0.1:3000/admin/streams/' + value + '.json',
        success: function(results) {
          select_substream.enable();
          callback(results);
        },
        error: function() {
          callback();
        }
      })
    });
  }
});

$select_substream = $('#student_substream_id').selectize({
  valueField: 'id',
  labelField: 'name',
  placeholder: 'Select stream first',
  searchField: ['name']
});

select_substream  = $select_substream[0].selectize;
select_stream = $select_stream[0].selectize;
select_substream.disable();



$('#student_gender').selectize({

});


















