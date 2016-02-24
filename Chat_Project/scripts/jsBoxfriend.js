$(document).ready(function () {
    $('.trg-open.website-title').click(function (e) {
        e.stopPropagation();
        $('.website-info').hide('slide', { direction: 'right' }, 1400);
        $(this).next('.website-info').stop().show('slide', { direction: 'right' }, 1400);
    });
});