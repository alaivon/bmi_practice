# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	states = $('#school_distance_id').html()
	$('#school_city_id').change ->
		country = $('#school_city_id :selected').text()
		options = $(states).filter("optgroup[label='#{country}']").html()
		if options
			$('#school_distance_id').html(options)
		else
			$('#school_distance_id').empty()