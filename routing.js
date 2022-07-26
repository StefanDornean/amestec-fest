$(document).ready(function () {
    var view = $("content");
    var activeRoutes = Array.from(document.querySelectorAll('[route]'));
   
    activeRoutes.forEach(function (route) {
        route.addEventListener('click', navigate, false);
    });

    function navigate(event) {
        console.log('ok');
        var route = event.target.attributes[0].value;
        var routeInfo = myRouter.routes.filter(function (r) {
            return r.path === route;
        })[0];

        console.log(route);

        if (!routeInfo) {
            window.history.pushState({}, '', '404');
            view.innerHtml = '404 page not found';
        }
        else {
            window.history.pushState({ path: routeInfo.path }, '', routeInfo.path);
            window.onpopstate = function() {
                location.reload();
            };
            $('#content').load(routeInfo.page);
        }
    }

    var Router = function (name, routes, page) {
        return {
            name: name,
            routes: routes,
            page: page
        };
    };

    var myRouter = new Router('myRouter', [
        {
            path: '/AMESTEC',
            name: 'Root',
            page: 'main-page.html'
        },
        {
            path: '/AMESTEC/details',
            name: 'details',
            page: './details/details-view.html'
        },
        {
            path: '/AMESTEC/tickets',
            name: 'tickets',
            page: './tickets/tickets-view.html'
        },
        {
            path: '/AMESTEC/lineup',
            name: 'lineup',
            page: './lineup/lineup-view.html'
        }
    ]);

    var currentPath = window.location.pathname;
    console.log(currentPath);
    if(currentPath === '/AMESTEC/'){
        $('#content').load('main-page.html');
    }
    else{
        console.log(currentPath);
        var route = myRouter.routes.filter(function(r){
            return r.path === currentPath;
        });

        if(route){
            $('#content').load(route.page);
        }
        else{
            $('#content').innerHtml = '404';
        }
    }
});


