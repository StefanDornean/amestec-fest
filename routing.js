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

        console.log(route, routeInfo);

        if (!routeInfo) {
            window.history.pushState({}, '', '404');
            view.innerHtml = '404 page not found';
        }
        else {
            //window.history.pushState({ path: routeInfo.path }, '', routeInfo.path);
            window.onpopstate = function() {
                location.reload();
            };
            console.log(routeInfo.page);
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
            page: './main/main-page.html'
        },
        {
            path: '/Amestec',
            name: 'Root',
            page: './main/main-page.html'
        },
        {
            path: '/Amestec/details',
            name: 'details',
            page: './details/details-view.html'
        },
        {
            path: '/Amestec/acomodation',
            name: 'acomodation',
            page: './acomodation/acomodation-view.html'
        },
        {
            path: '/Amestec/tickets',
            name: 'tickets',
            page: './tickets/tickets-view.html'
        },
        {
            path: '/Amestec/transport',
            name: 'transport',
            page: './transport/transport-view.html'
        },
        {
            path: '/Amestec/food',
            name: 'food',
            page: './food/food-view.html'
        },
        {
            path: '/Amestec/timeline',
            name: 'timeline',
            page: './timeline/timeline-view.html'
        }
    ]);

    var currentPath = window.location.pathname;
    if(currentPath === '/Amestec/'){
        $('#content').load('./main/main-page.html');
    }
    else{
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


