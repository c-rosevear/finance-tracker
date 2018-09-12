$(document).on('turbolinks:load', function() {
    $('#friend-lookup-form').on('ajax:complete', function(event, data, status) {
        $("#view-results").html(data.responseText)
    })
})