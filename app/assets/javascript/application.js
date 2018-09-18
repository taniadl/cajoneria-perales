import "bootstrap";


var main = function(){
    $('.dropdown-toggle').click(function(){
        $('.dropdrown-menu').toggle();
    });
};

$(document).ready(main);
