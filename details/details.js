$('#detailsBtn').click(function(){
    $(this).text(function(i,old){
        return old=='more' ?  'less' : 'more';
    });
});