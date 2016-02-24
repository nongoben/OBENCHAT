$(function () {
    $('.chatbox').hide();

    $('.sidebar-name').click(function () {
        var user_id = $(this).attr('data-user-id');
        var chatbox = $('.chatbox[data-user-id=' + user_id + ']');

        // Check if this chat box is already visible
        if (chatbox.is(':visible')) {
            // Don't do anything
            return;
        }

        // Set the order of the chatbox to make it appear to the left of the currently open chat boxes
        var lowest_order = 0;
        $('.chatbox:visible').each(function () {
            var order = parseInt($(this).css('order'));
            if (order < lowest_order) {
                lowest_order = order;
            }
        }).promise().done(function () {
            chatbox.css('order', lowest_order - 1).show();
        });
    });

    $('.chatbox-close').click(function () {
        var user_id = $(this).attr('data-user-id');
        $('.chatbox[data-user-id=' + user_id + ']').css('order', 0).hide();
    });
});


$("#uploadTrigger").click(function () {
    $("#uploadFile").click();
});