
$(document).on "page:change", -> 

    url = document.URL
    firstIndexOf = url.indexOf('/', 7)
    length = url.length

    if firstIndexOf + 1 isnt length
        nextIndexOf = url.indexOf('/', firstIndexOf)
        controllerName = url.substr(firstIndexOf + 1, nextIndexOf)
        $('div ul li .active').attr('class', '')
        $('#li_main_menu_' + controllerName).attr('class', 'active')
    else
        $('#li_main_menu_home').attr('class', 'active')