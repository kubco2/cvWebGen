$(function() {
    $('.template-trigger-add').on('click', function(event) {
        var $trigger = $(this);
        var $section = $trigger.closest('section');
        var $placeholder = $section.find('.placeholder').first();
        var $template = $section.find('.template[data-trigger='+ $trigger.attr('rel') +']').first();

        $placeholder.append($template.clone());
        // TODO Alter input name to not collide

    });

    $('.template-trigger-remove').live('click', function(event) {
        var $trigger = $(this);
        var $template = $trigger.closest('.template');

        $template.remove();

    });
});