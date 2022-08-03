$('#detailsBtn').click(function(){ //you can give id or class name here for $('button')
    $(this).text(function(i,old){
        return old=='more' ?  'less' : 'more';
    });
});

$('#about').load('./details/details-view.html');
$('#ticketsView').load('./main/tickets-short-view.html');
$('#artistsView').load('./main/artists-carousel.html'); 
$('#timelineView').load('./timeline/timeline-view.html');
$('#accomodationView').load('./accomodation/accomodation-view.html');
$('#transportView').load('./transport/transport-view.html');


